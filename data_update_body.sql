CREATE OR REPLACE PACKAGE BODY data_update_pkg AS

    -- Category Update
    PROCEDURE update_category(
        p_category_id        IN categories.category_id%TYPE,
        p_category_name      IN categories.category_name%TYPE,
        p_ctgs_description   IN categories.ctgs_description%TYPE
    ) AS
    BEGIN
        UPDATE categories
        SET category_name = p_category_name,
            ctgs_description = p_ctgs_description
        WHERE category_id = p_category_id;

        COMMIT;
    END;

    -- Region Update
    PROCEDURE update_region(
        p_region_id          IN regions.region_id%TYPE,
        p_region_name        IN regions.region_name%TYPE
    ) AS
    BEGIN
        UPDATE regions
        SET region_name = p_region_name
        WHERE region_id = p_region_id;

        COMMIT;
    END;

    -- City Update
    PROCEDURE update_city(
        p_city_id            IN cities.city_id%TYPE,
        p_city_name          IN cities.city_name%TYPE,
        p_region_id          IN cities.region_id%TYPE
    ) AS
    BEGIN
        UPDATE cities
        SET city_name = p_city_name,
            region_id = p_region_id
        WHERE city_id = p_city_id;

        COMMIT;
    END;

    -- Address Update
    PROCEDURE update_address(
        p_address_id         IN address.address_id%TYPE,
        p_street_address     IN address.street_address%TYPE,
        p_city_id            IN address.city_id%TYPE,
        p_postal_code        IN address.postal_code%TYPE,
        p_country            IN address.country%TYPE,
        p_phone              IN address.phone%TYPE
    ) AS
    BEGIN
        UPDATE address
        SET street_address = p_street_address,
            city_id = p_city_id,
            postal_code = p_postal_code,
            country = p_country,
            phone = p_phone
        WHERE address_id = p_address_id;

        COMMIT;
    END;

    -- Customer Update
    PROCEDURE update_customer(
        p_customer_id        IN customers.customer_id%TYPE,
        p_last_name          IN customers.last_name%TYPE,
        p_first_name         IN customers.first_name%TYPE,
        p_birth_date         IN customers.birth_date%TYPE,
        p_address_id         IN customers.address_id%TYPE
    ) AS
    BEGIN
        UPDATE customers
        SET last_name = p_last_name,
            first_name = p_first_name,
            birth_date = p_birth_date,
            address_id = p_address_id
        WHERE customer_id = p_customer_id;

        COMMIT;
    END;

    -- Employee Update
    PROCEDURE update_employee(
        p_employee_id        IN employees.employee_id%TYPE,
        p_last_name          IN employees.last_name%TYPE,
        p_first_name         IN employees.first_name%TYPE,
        p_emp_title          IN employees.emp_title%TYPE,
        p_birth_date         IN employees.birth_date%TYPE,
        p_hire_date          IN employees.hire_date%TYPE,
        p_address_id         IN employees.address_id%TYPE,
        p_notes              IN employees.notes%TYPE,
        p_reports_to         IN employees.reports_to%TYPE
    ) AS
    BEGIN
        UPDATE employees
        SET last_name = p_last_name,
            first_name = p_first_name,
            emp_title = p_emp_title,
            birth_date = p_birth_date,
            hire_date = p_hire_date,
            address_id = p_address_id,
            notes = p_notes,
            reports_to = p_reports_to
        WHERE employee_id = p_employee_id;

        COMMIT;
    END;

    -- Supplier Update
    PROCEDURE update_supplier(
        p_supplier_id        IN suppliers.supplier_id%TYPE,
        p_company_name       IN suppliers.company_name%TYPE,
        p_contact_name       IN suppliers.contact_name%TYPE,
        p_contact_title      IN suppliers.contact_title%TYPE,
        p_address_id         IN suppliers.address_id%TYPE,
        p_fax                IN suppliers.fax%TYPE,
        p_homepage           IN suppliers.homepage%TYPE
    ) AS
    BEGIN
        UPDATE suppliers
        SET company_name = p_company_name,
            contact_name = p_contact_name,
            contact_title = p_contact_title,
            address_id = p_address_id,
            fax = p_fax,
            homepage = p_homepage
        WHERE supplier_id = p_supplier_id;

        COMMIT;
    END;

    -- Shipper Update
    PROCEDURE update_shipper(
        p_shipper_id         IN shippers.shipper_id%TYPE,
        p_company_name       IN shippers.company_name%TYPE,
        p_phone              IN shippers.phone%TYPE
    ) AS
    BEGIN
        UPDATE shippers
        SET company_name = p_company_name,
            phone = p_phone
        WHERE shipper_id = p_shipper_id;

        COMMIT;
    END;

    -- Order Update
    PROCEDURE update_order(
        p_order_id           IN orders.order_id%TYPE,
        p_customer_id        IN orders.customer_id%TYPE,
        p_employee_id        IN orders.employee_id%TYPE,
        p_order_date         IN orders.order_date%TYPE,
        p_required_date      IN orders.required_date%TYPE,
        p_shipped_date       IN orders.shipped_date%TYPE,
        p_ship_via           IN orders.ship_via%TYPE,
        p_freight IN orders.freight%TYPE,
        p_ship_name IN orders.ship_name%TYPE,
        p_ship_address_id IN orders.ship_address_id%TYPE
        ) AS
        BEGIN
        UPDATE orders
        SET customer_id = p_customer_id,
        employee_id = p_employee_id,
        order_date = p_order_date,
        required_date = p_required_date,
        shipped_date = p_shipped_date,
        ship_via = p_ship_via,
        freight = p_freight,
        ship_name = p_ship_name,
        ship_address_id = p_ship_address_id
        WHERE order_id = p_order_id;
            COMMIT;
    END;

    -- Product Update
    PROCEDURE update_product(
        p_product_id         IN products.product_id%TYPE,
        p_product_name       IN products.product_name%TYPE,
        p_supplier_id        IN products.supplier_id%TYPE,
        p_category_id        IN products.category_id%TYPE,
        p_quantity_per_unit  IN products.quantity_per_unit%TYPE,
        p_unit_price         IN products.unit_price%TYPE,
        p_units_in_stock     IN products.units_in_stock%TYPE,
        p_units_on_order     IN products.units_on_order%TYPE,
        p_discontinued       IN products.discontinued%TYPE
    ) AS
    BEGIN
        UPDATE products
        SET product_name = p_product_name,
            supplier_id = p_supplier_id,
            category_id = p_category_id,
            quantity_per_unit = p_quantity_per_unit,
            unit_price = p_unit_price,
            units_in_stock = p_units_in_stock,
            units_on_order = p_units_on_order,
            discontinued = p_discontinued
        WHERE product_id = p_product_id;

        COMMIT;
    END;

    -- Order Detail Update
    PROCEDURE update_order_detail(
        p_order_id           IN order_details.order_id%TYPE,
        p_product_id         IN order_details.product_id%TYPE,
        p_unit_price         IN order_details.unit_price%TYPE,
        p_quantity           IN order_details.quantity%TYPE,
        p_discount           IN order_details.discount%TYPE
    ) AS
    BEGIN
        UPDATE order_details
        SET unit_price = p_unit_price,
            quantity = p_quantity,
            discount = p_discount
        WHERE order_id = p_order_id AND product_id = p_product_id;

        COMMIT;
    END;

    -- Payment Update
    PROCEDURE update_payment(
        p_payment_id         IN payments.payment_id%TYPE,
        p_order_id           IN payments.order_id%TYPE,
        p_payment_date       IN payments.payment_date%TYPE,
        p_amount             IN payments.amount%TYPE,
        p_payment_method     IN payments.payment_method%TYPE,
        p_status             IN payments.status%TYPE
    ) AS
    BEGIN
        UPDATE payments
        SET order_id = p_order_id,
            payment_date = p_payment_date,
            amount = p_amount,
            payment_method = p_payment_method,
            status = p_status
        WHERE payment_id = p_payment_id;

        COMMIT;
    END;

    -- Return Update
    PROCEDURE update_return(
        p_return_id          IN returns.return_id%TYPE,
        p_order_id           IN returns.order_id%TYPE,
        p_product_id         IN returns.product_id%TYPE,
        p_return_date        IN returns.return_date%TYPE,
        p_reason             IN returns.reason%TYPE,
        p_approved           IN returns.approved%TYPE,
        p_quantity           IN returns.quantity%TYPE
    ) AS
    BEGIN
        UPDATE returns
        SET order_id = p_order_id,
            product_id = p_product_id,
            return_date = p_return_date,
            reason = p_reason,
            approved = p_approved,
            quantity = p_quantity
        WHERE return_id = p_return_id;

        COMMIT;
    END;
    
END data_update_pkg;