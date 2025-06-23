CREATE OR REPLACE PACKAGE BODY data_entry_pkg AS

    PROCEDURE add_customer (
        p_last_name       IN customers.last_name%TYPE,
        p_first_name      IN customers.first_name%TYPE,
        p_birth_date      IN customers.birth_date%TYPE,
        p_street_address  IN address.street_address%TYPE,
        p_city_id         IN address.city_id%TYPE,
        p_postal_code     IN address.postal_code%TYPE,
        p_country         IN address.country%TYPE,
        p_phone           IN address.phone%TYPE
    ) AS
        v_new_address_id  address.address_id%TYPE;
        v_new_customer_id customers.customer_id%TYPE;
    BEGIN
        SELECT NVL(MAX(address_id), 0) + 1 INTO v_new_address_id FROM address;
        INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone)
        VALUES (v_new_address_id, p_street_address, p_city_id, p_postal_code, p_country, p_phone);

        SELECT NVL(MAX(customer_id), 0) + 1 INTO v_new_customer_id FROM customers;
        INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id)
        VALUES (v_new_customer_id, p_last_name, p_first_name, p_birth_date, v_new_address_id);

        COMMIT;
    END;

    PROCEDURE add_employee (
        p_last_name       IN employees.last_name%TYPE,
        p_first_name      IN employees.first_name%TYPE,
        p_emp_title       IN employees.emp_title%TYPE,
        p_birth_date      IN employees.birth_date%TYPE,
        p_hire_date       IN employees.hire_date%TYPE,
        p_street_address  IN address.street_address%TYPE,
        p_city_id         IN address.city_id%TYPE,
        p_postal_code     IN address.postal_code%TYPE,
        p_country         IN address.country%TYPE,
        p_phone           IN address.phone%TYPE,
        p_notes           IN employees.notes%TYPE,
        p_reports_to      IN employees.reports_to%TYPE
    ) AS
        v_new_address_id  address.address_id%TYPE;
        v_new_employee_id employees.employee_id%TYPE;
    BEGIN
        SELECT NVL(MAX(address_id), 0) + 1 INTO v_new_address_id FROM address;
        INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone)
        VALUES (v_new_address_id, p_street_address, p_city_id, p_postal_code, p_country, p_phone);

        SELECT NVL(MAX(employee_id), 0) + 1 INTO v_new_employee_id FROM employees;
        INSERT INTO employees (
            employee_id, last_name, first_name, emp_title, birth_date, hire_date,
            address_id, notes, reports_to
        ) VALUES (
            v_new_employee_id, p_last_name, p_first_name, p_emp_title,
            p_birth_date, p_hire_date, v_new_address_id, p_notes, p_reports_to
        );

        COMMIT;
    END;

    PROCEDURE add_supplier (
        p_company_name    IN suppliers.company_name%TYPE,
        p_contact_name    IN suppliers.contact_name%TYPE,
        p_contact_title   IN suppliers.contact_title%TYPE,
        p_street_address  IN address.street_address%TYPE,
        p_city_id         IN address.city_id%TYPE,
        p_postal_code     IN address.postal_code%TYPE,
        p_country         IN address.country%TYPE,
        p_phone           IN address.phone%TYPE,
        p_fax             IN suppliers.fax%TYPE,
        p_homepage        IN suppliers.homepage%TYPE
    ) AS
        v_new_address_id  address.address_id%TYPE;
        v_new_supplier_id suppliers.supplier_id%TYPE;
    BEGIN
        SELECT NVL(MAX(address_id), 0) + 1 INTO v_new_address_id FROM address;
        INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone)
        VALUES (v_new_address_id, p_street_address, p_city_id, p_postal_code, p_country, p_phone);

        SELECT NVL(MAX(supplier_id), 0) + 1 INTO v_new_supplier_id FROM suppliers;
        INSERT INTO suppliers (
            supplier_id, company_name, contact_name, contact_title,
            address_id, fax, homepage
        ) VALUES (
            v_new_supplier_id, p_company_name, p_contact_name, p_contact_title,
            v_new_address_id, p_fax, p_homepage
        );

        COMMIT;
    END;

    PROCEDURE add_product (
        p_product_name      IN products.product_name%TYPE,
        p_supplier_id       IN suppliers.supplier_id%TYPE,
        p_category_id       IN categories.category_id%TYPE,
        p_quantity_per_unit IN products.quantity_per_unit%TYPE,
        p_unit_price        IN products.unit_price%TYPE,
        p_units_in_stock    IN products.units_in_stock%TYPE,
        p_units_on_order    IN products.units_on_order%TYPE,
        p_discontinued      IN products.discontinued%TYPE
    ) AS 
        v_new_product_id products.product_id%TYPE;
    BEGIN
        SELECT NVL(MAX(product_id), 0) + 1 INTO v_new_product_id FROM products;
        INSERT INTO products (
            product_id, product_name, supplier_id, category_id , quantity_per_unit,
            unit_price, units_in_stock, units_on_order, discontinued
        ) VALUES (
            v_new_product_id, p_product_name, p_supplier_id, p_category_id, p_quantity_per_unit,
            p_unit_price, p_units_in_stock, p_units_on_order, p_discontinued  
        );

        COMMIT;
    END;


    PROCEDURE add_order (
        p_customer_id       IN customers.customer_id%TYPE,
        p_employee_id       IN employees.employee_id%TYPE,
        p_order_date        IN orders.order_date%TYPE,
        p_required_date     IN orders.required_date%TYPE,
        p_shipped_date      IN orders.shipped_date%TYPE,
        p_ship_via          IN orders.ship_via%TYPE,
        p_freight           In orders.freight%TYPE,
        p_ship_name         IN orders.ship_name%TYPE,
        p_ship_address_id   IN orders.ship_address_id%TYPE
    ) AS
        v_new_order_id orders.order_id%TYPE;
    BEGIN
        SELECT NVL(MAX(order_id), 0) + 1 INTO v_new_order_id FROM orders;
        INSERT INTO orders (
            order_id, customer_id , employee_id, order_date, required_date,
            shipped_date, ship_via, freight, ship_name, ship_address_id   
        ) VALUES (
            v_new_order_id, p_customer_id, p_employee_id, p_order_date, p_required_date,
            p_shipped_date, p_ship_via, p_freight, p_ship_name, p_ship_address_id
        );
        COMMIT;
    END;

    PROCEDURE add_payment (
        p_order_id          IN orders.order_id%TYPE,
        p_payment_date      IN payments.payment_date%TYPE,
        p_amount            IN payments.amount%TYPE,
        p_payment_method    IN payments.payment_method%TYPE,
        p_status            IN payments.status%TYPE
    ) AS
        v_new_payment_id payments.payment_id%TYPE;
    BEGIN
        SELECT NVL(MAX(payment_id), 0) + 1 INTO v_new_payment_id FROM payments;
        INSERT INTO payments (
            payment_id, order_id, payment_date, amount, payment_method, status
        ) VALUES (
            v_new_payment_id, p_order_id, p_payment_date, p_amount, p_payment_method,
            p_status
        );
        COMMIT;
    END;


    PROCEDURE add_return(
        p_order_id          IN orders.order_id%TYPE,
        p_product_id        IN products.product_id%TYPE,
        p_return_date       IN returns.return_date%TYPE,
        p_reason            IN returns.reason%TYPE,
        p_approved          IN returns.approved%TYPE,
        p_quantity          IN returns.quantity%TYPE
    ) AS
        v_new_return_id returns.return_id%TYPE;
    BEGIN
        SELECT NVL(MAX(return_id), 0) + 1 INTO v_new_return_id FROM returns;
        INSERT INTO returns (
            return_id, order_id, product_id, return_date, reason, approved, quantity
        ) VALUES (
            v_new_return_id, p_order_id, p_product_id, p_return_date, p_reason,
            p_approved, p_quantity
        );
        COMMIT;
    END;

END data_entry_pkg;
