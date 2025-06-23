CREATE OR REPLACE PACKAGE data_entry_pkg AS
    PROCEDURE add_customer (
        p_last_name       IN customers.last_name%TYPE,
        p_first_name      IN customers.first_name%TYPE,
        p_birth_date      IN customers.birth_date%TYPE,
        p_street_address  IN address.street_address%TYPE,
        p_city_id         IN address.city_id%TYPE,
        p_postal_code     IN address.postal_code%TYPE,
        p_country         IN address.country%TYPE,
        p_phone           IN address.phone%TYPE
    );

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
    );

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
    );

    PROCEDURE add_product (
        p_product_name      IN products.product_name%TYPE,
        p_supplier_id       IN suppliers.supplier_id%TYPE,
        p_category_id       IN categories.category_id%TYPE,
        p_quantity_per_unit IN products.quantity_per_unit%TYPE,
        p_unit_price        IN products.unit_price%TYPE,
        p_units_in_stock    IN products.units_in_stock%TYPE,
        p_units_on_order    IN products.units_on_order%TYPE,
        p_discontinued      IN products.discontinued%TYPE
    );

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
    );

    PROCEDURE add_payment (
        p_order_id          IN orders.order_id%TYPE,
        p_payment_date      IN payments.payment_date%TYPE,
        p_amount            IN payments.amount%TYPE,
        p_payment_method    IN payments.payment_method%TYPE,
        p_status            IN payments.status%TYPE
    );

    PROCEDURE add_return (
        p_order_id          IN orders.order_id%TYPE,
        p_product_id        IN products.product_id%TYPE,
        p_return_date       IN returns.return_date%TYPE,
        p_reason            IN returns.reason%TYPE,
        p_approved          IN returns.approved%TYPE,
        p_quantity          IN returns.quantity%TYPE
    );

END data_entry_pkg;
