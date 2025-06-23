-- Trigger 1: Update "units_in_stock" and "units_on_order" in Products after an Order is placed
-- Türkçe Açıklama: Bir sipariş detayları tablosuna ekleme veya silme işlemi sonrası ürünlerin stok ve sipariş üzerindeki birim sayısını günceller.
-- English Explanation: Updates product stock quantities and units on order after inserting or deleting order details.
CREATE OR REPLACE TRIGGER trg_manage_product_stock
AFTER INSERT OR DELETE ON order_details
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE products
        SET units_in_stock = units_in_stock - :NEW.quantity,
            units_on_order = units_on_order + :NEW.quantity
        WHERE product_id = :NEW.product_id;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20002, 'Product not found or insufficient stock.');
        END IF;
    ELSIF DELETING THEN
        UPDATE products
        SET units_in_stock = units_in_stock + :OLD.quantity,
            units_on_order = units_on_order - :OLD.quantity
        WHERE product_id = :OLD.product_id;
    END IF;
END;
/

-- Trigger 2: Validate "required_date" and automatically adjust "ship_via" based on urgency
-- Türkçe Açıklama: Sipariş eklenirken veya güncellenirken teslim tarihi doğrulanır ve acil durumlarda gönderim yöntemi otomatik değiştirilir.
-- English Explanation: Validates required date on orders and automatically sets express shipping if delivery is urgent.
CREATE OR REPLACE TRIGGER trg_validate_and_adjust_shipping
BEFORE INSERT OR UPDATE ON orders
FOR EACH ROW
DECLARE
    urgent_interval INTERVAL DAY TO SECOND := INTERVAL '3' DAY;
BEGIN
    IF :NEW.required_date <= :NEW.order_date THEN
        RAISE_APPLICATION_ERROR(-20001, 'Required date must be at least 1 day after the order date.');
    END IF;

    IF :NEW.required_date - :NEW.order_date <= urgent_interval THEN
        :NEW.ship_via := 1; -- Assume 1 is the ID for express shipping
    END IF;
END;
/

-- Trigger 3: Update product stock on new order detail
-- Türkçe Açıklama: Yeni bir sipariş detayı eklendiğinde ürün stok miktarını kontrol eder ve yetersiz stok varsa hata verir.
-- English Explanation: Checks stock availability and updates product stock when a new order detail is inserted.
CREATE OR REPLACE TRIGGER trg_update_stock_on_order
AFTER INSERT ON order_details
FOR EACH ROW
DECLARE
    v_units_in_stock products.units_in_stock%TYPE;
BEGIN
    -- Ürünün mevcut stok miktarını al
    SELECT units_in_stock INTO v_units_in_stock
    FROM products
    WHERE product_id = :NEW.product_id;

    -- Yeterli stok olup olmadığını kontrol et
    IF v_units_in_stock < :NEW.quantity THEN
        RAISE_APPLICATION_ERROR(-20001, 'Yetersiz stok: Ürün ID: ' || :NEW.product_id);
    END IF;

    -- Ürün stokunu güncelle
    UPDATE products
    SET units_in_stock = units_in_stock - :NEW.quantity
    WHERE product_id = :NEW.product_id;
END;
/

-- Trigger 4: Prevent conflicting updates to "employees" reporting structure
-- Türkçe Açıklama: Bir çalışanın kendisine rapor vermesini veya döngüsel raporlama yapılarını engeller.
-- English Explanation: Prevents employees from reporting to themselves or creating circular reporting structures.
CREATE OR REPLACE TRIGGER trg_validate_employee_hierarchy
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
    IF :NEW.reports_to = :NEW.employee_id THEN
        RAISE_APPLICATION_ERROR(-20004, 'An employee cannot report to themselves.');
    END IF;

    IF :NEW.reports_to IS NOT NULL THEN
        DECLARE
            l_manager_id SMALLINT;
        BEGIN
            SELECT reports_to INTO l_manager_id FROM employees WHERE employee_id = :NEW.reports_to;

            IF l_manager_id = :NEW.employee_id THEN
                RAISE_APPLICATION_ERROR(-20005, 'Circular reporting structure detected.');
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20006, 'Manager does not exist.');
        END;
    END IF;
END;
/
