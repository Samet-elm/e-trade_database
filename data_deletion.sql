CREATE OR REPLACE PACKAGE data_delete_pkg AS
    PROCEDURE delete_category_by_id(p_category_id IN categories.category_id%TYPE);
    PROCEDURE delete_region_by_id(p_region_id IN regions.region_id%TYPE);
    PROCEDURE delete_city_by_id(p_city_id IN cities.city_id%TYPE);
    PROCEDURE delete_address_by_id(p_address_id IN address.address_id%TYPE);
    PROCEDURE delete_customer_by_id(p_customer_id IN customers.customer_id%TYPE);
    PROCEDURE delete_employee_by_id(p_employee_id IN employees.employee_id%TYPE);
    PROCEDURE delete_supplier_by_id(p_supplier_id IN suppliers.supplier_id%TYPE);
    PROCEDURE delete_shipper_by_id(p_shipper_id IN shippers.shipper_id%TYPE);
    PROCEDURE delete_order_by_id(p_order_id IN orders.order_id%TYPE);
    PROCEDURE delete_product_by_id(p_product_id IN products.product_id%TYPE);
    PROCEDURE delete_order_detail_by_id(p_order_id IN order_details.order_id%TYPE, p_product_id IN order_details.product_id%TYPE);
    PROCEDURE delete_payment_by_id(p_payment_id IN payments.payment_id%TYPE);
    PROCEDURE delete_return_by_id(p_return_id IN returns.return_id%TYPE);
END data_delete_pkg;
/