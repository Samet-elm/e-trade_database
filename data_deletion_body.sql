CREATE OR REPLACE PACKAGE BODY data_delete_pkg AS

    PROCEDURE delete_category_by_id(p_category_id IN categories.category_id%TYPE) AS
    BEGIN
        DELETE FROM categories WHERE category_id = p_category_id;
        COMMIT;
    END;

    PROCEDURE delete_region_by_id(p_region_id IN regions.region_id%TYPE) AS
    BEGIN
        DELETE FROM regions WHERE region_id = p_region_id;
        COMMIT;
    END;

    PROCEDURE delete_city_by_id(p_city_id IN cities.city_id%TYPE) AS
    BEGIN
        DELETE FROM cities WHERE city_id = p_city_id;
        COMMIT;
    END;

    PROCEDURE delete_address_by_id(p_address_id IN address.address_id%TYPE) AS
    BEGIN
        DELETE FROM address WHERE address_id = p_address_id;
        COMMIT;
    END;

    PROCEDURE delete_customer_by_id(p_customer_id IN customers.customer_id%TYPE) AS
    BEGIN
        DELETE FROM customers WHERE customer_id = p_customer_id;
        COMMIT;
    END;

    PROCEDURE delete_employee_by_id(p_employee_id IN employees.employee_id%TYPE) AS
    BEGIN
        DELETE FROM employees WHERE employee_id = p_employee_id;
        COMMIT;
    END;

    PROCEDURE delete_supplier_by_id(p_supplier_id IN suppliers.supplier_id%TYPE) AS
    BEGIN
        DELETE FROM suppliers WHERE supplier_id = p_supplier_id;
        COMMIT;
    END;

    PROCEDURE delete_shipper_by_id(p_shipper_id IN shippers.shipper_id%TYPE) AS
    BEGIN
        DELETE FROM shippers WHERE shipper_id = p_shipper_id;
        COMMIT;
    END;

    PROCEDURE delete_order_by_id(p_order_id IN orders.order_id%TYPE) AS
    BEGIN
        DELETE FROM orders WHERE order_id = p_order_id;
        COMMIT;
    END;

    PROCEDURE delete_product_by_id(p_product_id IN products.product_id%TYPE) AS
    BEGIN
        DELETE FROM products WHERE product_id = p_product_id;
        COMMIT;
    END;

    PROCEDURE delete_order_detail_by_id(p_order_id IN order_details.order_id%TYPE, p_product_id IN order_details.product_id%TYPE) AS
    BEGIN
        DELETE FROM order_details WHERE order_id = p_order_id AND product_id = p_product_id;
        COMMIT;
    END;

    PROCEDURE delete_payment_by_id(p_payment_id IN payments.payment_id%TYPE) AS
    BEGIN
        DELETE FROM payments WHERE payment_id = p_payment_id;
        COMMIT;
    END;

    PROCEDURE delete_return_by_id(p_return_id IN returns.return_id%TYPE) AS
    BEGIN
        DELETE FROM returns WHERE return_id = p_return_id;
        COMMIT;
    END;

END data_delete_pkg;
/
