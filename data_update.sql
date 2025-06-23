CREATE OR REPLACE PACKAGE data_update_pkg AS

    -- Prosedürler
    PROCEDURE update_category(
        p_category_id        IN categories.category_id%TYPE,
        p_category_name      IN categories.category_name%TYPE,
        p_ctgs_description   IN categories.ctgs_description%TYPE
    );

    PROCEDURE update_region(
        p_region_id          IN regions.region_id%TYPE,
        p_region_name        IN regions.region_name%TYPE
    );

    PROCEDURE update_city(
        p_city_id            IN cities.city_id%TYPE,
        p_city_name          IN cities.city_name%TYPE,
        p_region_id          IN cities.region_id%TYPE
    );

    PROCEDURE update_address(
        p_address_id         IN address.address_id%TYPE,
        p_street_address     IN address.street_address%TYPE,
        p_city_id            IN address.city_id%TYPE,
        p_postal_code        IN address.postal_code%TYPE,
        p_country            IN address.country%TYPE,
        p_phone              IN address.phone%TYPE
    );

    PROCEDURE update_customer(
        p_customer_id        IN customers.customer_id%TYPE,
        p_last_name          IN customers.last_name%TYPE,
        p_first_name         IN customers.first_name%TYPE,
        p_birth_date         IN customers.birth_date%TYPE,
        p_address_id         IN customers.address_id%TYPE
    );

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
    );

    PROCEDURE update_supplier(
        p_supplier_id        IN suppliers.supplier_id%TYPE,
        p_company_name       IN suppliers.company_name%TYPE,
        p_contact_name       IN suppliers.contact_name%TYPE,
        p_contact_title      IN suppliers.contact_title%TYPE,
        p_address_id         IN suppliers.address_id%TYPE,
        p_fax                IN suppliers.fax%TYPE,
        p_homepage           IN suppliers.homepage%TYPE
    );

    PROCEDURE update_shipper(
        p_shipper_id         IN shippers.shipper_id%TYPE,
        p_company_name       IN shippers.company_name%TYPE,
        p_phone              IN shippers.phone%TYPE
    );

    PROCEDURE update_order(
        p_order_id           IN orders.order_id%TYPE,
        p_customer_id        IN orders.customer_id%TYPE,
        p_employee_id        IN orders.employee_id%TYPE,
        p_order_date         IN orders.order_date%TYPE,
        p_required_date      IN orders.required_date%TYPE,
        p_shipped_date       IN orders.shipped_date%TYPE,
        p_ship_via           IN orders.ship_via%TYPE,
        p_freight            IN orders.freight%TYPE,
        p_ship_name          IN orders.ship_name%TYPE,
        p_ship_address_id    IN orders.ship_address_id%TYPE
    );

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
    );

    PROCEDURE update_order_detail(
        p_order_id           IN order_details.order_id%TYPE,
        p_product_id         IN order_details.product_id%TYPE,
        p_unit_price         IN order_details.unit_price%TYPE,
        p_quantity           IN order_details.quantity%TYPE,
        p_discount           IN order_details.discount%TYPE
    );

    PROCEDURE update_payment(
        p_payment_id         IN payments.payment_id%TYPE,
        p_order_id           IN payments.order_id%TYPE,
        p_payment_date       IN payments.payment_date%TYPE,
        p_amount             IN payments.amount%TYPE,
        p_payment_method     IN payments.payment_method%TYPE,
        p_status             IN payments.status%TYPE
    );

    PROCEDURE update_return(
        p_return_id          IN returns.return_id%TYPE,
        p_order_id           IN returns.order_id%TYPE,
        p_product_id         IN returns.product_id%TYPE,
        p_return_date        IN returns.return_date%TYPE,
        p_reason             IN returns.reason%TYPE,
        p_approved           IN returns.approved%TYPE,
        p_quantity           IN returns.quantity%TYPE
    );

END data_update_pkg;
