-- Şehir ismi kullanılarak şehirdeki sağlayıcılar listelenir
DECLARE
    v_city_name     cities.city_name%TYPE := 'Ankara'; -- Specify the city here
    v_supplier_id   suppliers.supplier_id%TYPE;
    v_company_name  suppliers.company_name%TYPE;
    v_contact_name  suppliers.contact_name%TYPE;
    v_contact_title suppliers.contact_title%TYPE;
    v_street_address address.street_address%TYPE;
    v_city_name_out cities.city_name%TYPE;
    v_region_name   regions.region_name%TYPE;
    v_postal_code   address.postal_code%TYPE;
    v_country       address.country%TYPE;
    v_phone         address.phone%TYPE;
    
    -- Dynamic cursor definition
    TYPE ref_cursor_type IS REF CURSOR;
    v_cursor        ref_cursor_type;
    
    v_sql           VARCHAR2(1000);
    v_count         NUMBER := 0;
BEGIN
    -- Dynamic SQL to get suppliers in the specified city
    v_sql := '
        SELECT s.supplier_id, s.company_name, s.contact_name, s.contact_title,
               a.street_address, c.city_name, r.region_name, 
               a.postal_code, a.country, a.phone
        FROM suppliers s
        JOIN address a ON s.address_id = a.address_id
        JOIN cities c ON a.city_id = c.city_id
        JOIN regions r ON c.region_id = r.region_id
        WHERE UPPER(c.city_name) = UPPER(:city_param)
        ORDER BY s.company_name
    ';
    
    -- Open cursor with the city parameter
    OPEN v_cursor FOR v_sql USING v_city_name;
    
    DBMS_OUTPUT.PUT_LINE('Suppliers in City: ' || v_city_name);
    DBMS_OUTPUT.PUT_LINE('----------------------------------------');
    
    -- Fetch and display results
    LOOP
        FETCH v_cursor INTO 
            v_supplier_id, v_company_name, v_contact_name, v_contact_title,
            v_street_address, v_city_name_out, v_region_name,
            v_postal_code, v_country, v_phone;
            
        EXIT WHEN v_cursor%NOTFOUND;
        
        v_count := v_count + 1;
        
        DBMS_OUTPUT.PUT_LINE('Supplier ID: ' || v_supplier_id);
        DBMS_OUTPUT.PUT_LINE('Company: ' || v_company_name);
        DBMS_OUTPUT.PUT_LINE('Contact: ' || v_contact_name || ' (' || v_contact_title || ')');
        DBMS_OUTPUT.PUT_LINE('Address: ' || v_street_address);
        DBMS_OUTPUT.PUT_LINE('         ' || v_city_name_out || ', ' || 
                            NVL(v_region_name, '') || ' ' || 
                            NVL(v_postal_code, ''));
        DBMS_OUTPUT.PUT_LINE('Country: ' || v_country);
        DBMS_OUTPUT.PUT_LINE('Phone: ' || v_phone);
        DBMS_OUTPUT.PUT_LINE('----------------------------------------');
    END LOOP;
    
    -- Display summary
    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No suppliers found in ' || v_city_name);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Total suppliers found: ' || v_count);
    END IF;
    
    -- Close cursor
    CLOSE v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
        IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
        END IF;
END;



-- Kullanıcı id(dinamik) kullanılarak kullanıcının aldığı ürünlerin listelenmesi
DECLARE
    v_customer_id   customers.customer_id%TYPE := 1; -- Kullanıcının ID’si
    v_order_id      orders.order_id%TYPE;
    v_product_id    order_details.product_id%TYPE;
    v_unit_price    order_details.unit_price%TYPE;
    v_quantity      order_details.quantity%TYPE;
    v_discount      order_details.discount%TYPE;

    -- Dinamik cursor tanımı
    TYPE ref_cursor_type IS REF CURSOR;
    v_cursor        ref_cursor_type;

    v_sql           VARCHAR2(1000);
BEGIN
    -- Dinamik SQL: Join ile customer_id'ye göre order_details bilgisi alınır
    v_sql := '
        SELECT od.order_id, od.product_id, od.unit_price, od.quantity, od.discount FROM 
        order_details od JOIN orders o ON 
        od.order_id = o.order_id WHERE o.customer_id = :1
    ';

    -- Cursor’ı aç
    OPEN v_cursor FOR v_sql USING v_customer_id;

    -- Verileri cursor’dan sırayla al ve yazdır
    LOOP
        FETCH v_cursor INTO v_order_id, v_product_id, v_unit_price, v_quantity, v_discount;
        EXIT WHEN v_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Sipariş ID: ' || v_order_id ||
                             ', Ürün ID: ' || v_product_id ||
                             ', Fiyat: ' || v_unit_price ||
                             ', Adet: ' || v_quantity ||
                             ', İndirim: ' || v_discount);
    END LOOP;

    -- Cursor kapat
    CLOSE v_cursor;
END;



-- Dinamik kategori adına göre ürünlerin listelenmesi
DECLARE
    v_category_name     categories.category_name%TYPE := 'Elektronik'; -- Kategori adı dinamik olarak atanır
    v_product_id        products.product_id%TYPE;
    v_product_name      products.product_name%TYPE;
    v_unit_price        products.unit_price%TYPE;

    -- Dinamik cursor tanımı
    TYPE ref_cursor_type IS REF CURSOR;
    v_cursor            ref_cursor_type;

    v_sql               VARCHAR2(1000);
BEGIN
    -- Dinamik SQL: Join ile kategori adına göre ürün bilgisi alınır
    v_sql := '
        SELECT p.product_id, p.product_name, p.unit_price
        FROM products p
        JOIN categories c ON p.category_id = c.category_id
        WHERE c.category_name = :1
    ';

    -- Cursor’ı aç
    OPEN v_cursor FOR v_sql USING v_category_name;

    -- Verileri cursor’dan sırayla al ve yazdır
    LOOP
        FETCH v_cursor INTO v_product_id, v_product_name, v_unit_price;
        EXIT WHEN v_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Ürün ID: ' || v_product_id ||
                             ', Adı: ' || v_product_name ||
                             ', Fiyat: ' || v_unit_price);
    END LOOP;

    -- Cursor kapat
    CLOSE v_cursor;
END;
