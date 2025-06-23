-- Orders tablosu için
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_employee_id ON orders(employee_id);
CREATE INDEX idx_orders_ship_via ON orders(ship_via);
CREATE INDEX idx_orders_ship_address_id ON orders(ship_address_id);

-- Order_Details tablosu için
CREATE INDEX idx_order_details_product_id ON order_details(product_id);

-- Products tablosu için
CREATE INDEX idx_products_category_id ON products(category_id);
CREATE INDEX idx_products_supplier_id ON products(supplier_id);

-- Employees tablosu için
CREATE INDEX idx_employees_reports_to ON employees(reports_to);

-- Cities tablosu için
CREATE INDEX idx_cities_region_id ON cities(region_id);

-- Address tablosu için
CREATE INDEX idx_address_city_id ON address(city_id);

-- Payments tablosu için
CREATE INDEX idx_payments_order_id ON payments(order_id);
CREATE INDEX idx_payments_payment_date ON payments(payment_date);

-- Returns tablosu için
CREATE INDEX idx_returns_order_id ON returns(order_id);
CREATE INDEX idx_returns_product_id ON returns(product_id);
