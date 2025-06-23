CREATE OR REPLACE PACKAGE product_utils AS
    PROCEDURE remove_duplicate_products;
    PROCEDURE remove_duplicate_customers;
    PROCEDURE remove_duplicate_orders;
END product_utils;
/


CREATE OR REPLACE PACKAGE BODY product_utils AS
    PROCEDURE remove_duplicate_products IS
    BEGIN
        DELETE FROM products
        WHERE rowid NOT IN (
            SELECT MIN(rowid)
            FROM products
            GROUP BY product_name, category_id
        );
        COMMIT;
    END remove_duplicate_products;
    
    PROCEDURE remove_duplicate_customers IS
    BEGIN
        DELETE FROM customers
        WHERE rowid NOT IN (
            SELECT MIN(rowid)
            FROM customers
            GROUP BY first_name, last_name, birth_date, address_id
        );
        COMMIT;
    END remove_duplicate_customers;
    
    PROCEDURE remove_duplicate_orders IS
    BEGIN
        DELETE FROM orders
        WHERE rowid NOT IN (
            SELECT MIN(rowid)
            FROM orders
            GROUP BY customer_id, order_date, order_id
        );
        COMMIT;
    END remove_duplicate_orders;

END product_utils;
/


BEGIN
    product_utils.remove_duplicate_products;
    product_utils.remove_duplicate_customers;
    product_utils.remove_duplicate_orders;
END;
/