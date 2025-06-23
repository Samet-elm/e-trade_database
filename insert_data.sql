-- Regions Tablosuna Veri Ekleme (Türkiye Bölgeleri)
INSERT INTO regions (region_id, region_name) VALUES (1, 'Marmara');
INSERT INTO regions (region_id, region_name) VALUES (2, 'Ege');
INSERT INTO regions (region_id, region_name) VALUES (3, 'Akdeniz');
INSERT INTO regions (region_id, region_name) VALUES (4, 'İç Anadolu');
INSERT INTO regions (region_id, region_name) VALUES (5, 'Karadeniz');
INSERT INTO regions (region_id, region_name) VALUES (6, 'Doğu Anadolu');
INSERT INTO regions (region_id, region_name) VALUES (7, 'Güneydoğu Anadolu');

-- Cities Tablosuna Veri Ekleme (Türkiye İlleri - Plaka Kodları ile)
INSERT INTO cities VALUES ('01', 'Adana', 3);
INSERT INTO cities VALUES ('02', 'Adıyaman', 7);
INSERT INTO cities VALUES ('03', 'Afyonkarahisar', 2);
INSERT INTO cities VALUES ('04', 'Ağrı', 6);
INSERT INTO cities VALUES ('05', 'Amasya', 5);
INSERT INTO cities VALUES ('06', 'Ankara', 4);
INSERT INTO cities VALUES ('07', 'Antalya', 3);
INSERT INTO cities VALUES ('08', 'Artvin', 5);
INSERT INTO cities VALUES ('09', 'Aydın', 2);
INSERT INTO cities VALUES ('10', 'Balıkesir', 1);
INSERT INTO cities VALUES ('11', 'Bilecik', 1);
INSERT INTO cities VALUES ('12', 'Bingöl', 6);
INSERT INTO cities VALUES ('13', 'Bitlis', 6);
INSERT INTO cities VALUES ('14', 'Bolu', 5);
INSERT INTO cities VALUES ('15', 'Burdur', 3);
INSERT INTO cities VALUES ('16', 'Bursa', 1);
INSERT INTO cities VALUES ('17', 'Çanakkale', 1);
INSERT INTO cities VALUES ('18', 'Çankırı', 4);
INSERT INTO cities VALUES ('19', 'Çorum', 5);
INSERT INTO cities VALUES ('20', 'Denizli', 2);
INSERT INTO cities VALUES ('21', 'Diyarbakır', 7);
INSERT INTO cities VALUES ('22', 'Edirne', 1);
INSERT INTO cities VALUES ('23', 'Elazığ', 6);
INSERT INTO cities VALUES ('24', 'Erzincan', 6);
INSERT INTO cities VALUES ('25', 'Erzurum', 6);
INSERT INTO cities VALUES ('26', 'Eskişehir', 4);
INSERT INTO cities VALUES ('27', 'Gaziantep', 7);
INSERT INTO cities VALUES ('28', 'Giresun', 5);
INSERT INTO cities VALUES ('29', 'Gümüşhane', 5);
INSERT INTO cities VALUES ('30', 'Hakkâri', 6);
INSERT INTO cities VALUES ('31', 'Hatay', 3);
INSERT INTO cities VALUES ('32', 'Isparta', 3);
INSERT INTO cities VALUES ('33', 'Mersin', 3);
INSERT INTO cities VALUES ('34', 'İstanbul', 1);
INSERT INTO cities VALUES ('35', 'İzmir', 2);
INSERT INTO cities VALUES ('36', 'Kars', 6);
INSERT INTO cities VALUES ('37', 'Kastamonu', 5);
INSERT INTO cities VALUES ('38', 'Kayseri', 4);
INSERT INTO cities VALUES ('39', 'Kırklareli', 1);
INSERT INTO cities VALUES ('40', 'Kırşehir', 4);
INSERT INTO cities VALUES ('41', 'Kocaeli', 1);
INSERT INTO cities VALUES ('42', 'Konya', 4);
INSERT INTO cities VALUES ('43', 'Kütahya', 2);
INSERT INTO cities VALUES ('44', 'Malatya', 6);
INSERT INTO cities VALUES ('45', 'Manisa', 2);
INSERT INTO cities VALUES ('46', 'Kahramanmaraş', 3);
INSERT INTO cities VALUES ('47', 'Mardin', 7);
INSERT INTO cities VALUES ('48', 'Muğla', 2);
INSERT INTO cities VALUES ('49', 'Muş', 6);
INSERT INTO cities VALUES ('50', 'Nevşehir', 4);
INSERT INTO cities VALUES ('51', 'Niğde', 4);
INSERT INTO cities VALUES ('52', 'Ordu', 5);
INSERT INTO cities VALUES ('53', 'Rize', 5);
INSERT INTO cities VALUES ('54', 'Sakarya', 1);
INSERT INTO cities VALUES ('55', 'Samsun', 5);
INSERT INTO cities VALUES ('56', 'Siirt', 7);
INSERT INTO cities VALUES ('57', 'Sinop', 5);
INSERT INTO cities VALUES ('58', 'Sivas', 4);
INSERT INTO cities VALUES ('59', 'Tekirdağ', 1);
INSERT INTO cities VALUES ('60', 'Tokat', 5);
INSERT INTO cities VALUES ('61', 'Trabzon', 5);
INSERT INTO cities VALUES ('62', 'Tunceli', 6);
INSERT INTO cities VALUES ('63', 'Şanlıurfa', 7);
INSERT INTO cities VALUES ('64', 'Uşak', 2);
INSERT INTO cities VALUES ('65', 'Van', 6);
INSERT INTO cities VALUES ('66', 'Yozgat', 4);
INSERT INTO cities VALUES ('67', 'Zonguldak', 5);
INSERT INTO cities VALUES ('68', 'Aksaray', 4);
INSERT INTO cities VALUES ('69', 'Bayburt', 5);
INSERT INTO cities VALUES ('70', 'Karaman', 4);
INSERT INTO cities VALUES ('71', 'Kırıkkale', 4);
INSERT INTO cities VALUES ('72', 'Batman', 7);
INSERT INTO cities VALUES ('73', 'Şırnak', 7);
INSERT INTO cities VALUES ('74', 'Bartın', 5);
INSERT INTO cities VALUES ('75', 'Ardahan', 6);
INSERT INTO cities VALUES ('76', 'Iğdır', 6);
INSERT INTO cities VALUES ('77', 'Yalova', 1);
INSERT INTO cities VALUES ('78', 'Karabük', 5);
INSERT INTO cities VALUES ('79', 'Kilis', 7);
INSERT INTO cities VALUES ('80', 'Osmaniye', 3);
INSERT INTO cities VALUES ('81', 'Düzce', 5);

-- Address Tablosuna Veri Ekleme
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (1, 'Bağdat Caddesi No:10', '34', '34728', 'Türkiye', '+902165543210');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (2, 'Kordon Boyu No:5', '35', '35220', 'Türkiye', '+902322123456');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (3, 'Lara Caddesi No:15', '07', '07100', 'Türkiye', '+902422345678');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (4, 'Atatürk Bulvarı No:20', '06', '06680', 'Türkiye', '+903124567890');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (5, 'Meydan Mah. No:8', '61', '61040', 'Türkiye', '+904623456789');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (6, 'Yakutiye Mah. No:12', '25', '25100', 'Türkiye', '+904422345678');
INSERT INTO address (address_id, street_address, city_id, postal_code, country, phone) VALUES (7, 'Suriçi No:3', '21', '21100', 'Türkiye', '+904122345678');

-- Categories Tablosuna Veri Ekleme
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (1, 'Elektronik', 'Elektronik cihazlar ve aksesuarlar');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (2, 'Giyim', 'Erkek, kadın ve çocuk giyim ürünleri');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (3, 'Ev ve Yaşam', 'Ev dekorasyon ve yaşam ürünleri');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (4, 'Kitap', 'Roman, ders kitabı, dergi ve diğer yayınlar');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (5, 'Spor', 'Spor ekipmanları ve aksesuarlar');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (6, 'Kozmetik', 'Cilt bakımı ve makyaj ürünleri');
INSERT INTO categories (category_id, category_name, ctgs_description) VALUES (7, 'Oyuncak', 'Çocuk oyuncakları ve oyun setleri');

-- Customers Tablosuna Veri Ekleme
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (1, 'Yılmaz', 'Ahmet', TO_DATE('15-05-1985', 'DD-MM-YYYY'), 1);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (2, 'Kaya', 'Ayşe', TO_DATE('22-08-1990', 'DD-MM-YYYY'), 2);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (3, 'Demir', 'Mehmet', TO_DATE('10-03-1978', 'DD-MM-YYYY'), 3);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (4, 'Çelik', 'Fatma', TO_DATE('05-11-1982', 'DD-MM-YYYY'), 4);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (5, 'Şahin', 'Ali', TO_DATE('30-07-1995', 'DD-MM-YYYY'), 5);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (6, 'Aksoy', 'Zeynep', TO_DATE('18-09-1988', 'DD-MM-YYYY'), 6);
INSERT INTO customers (customer_id, last_name, first_name, birth_date, address_id) VALUES (7, 'Öztürk', 'Mustafa', TO_DATE('25-12-1975', 'DD-MM-YYYY'), 7);

-- Employees Tablosuna Veri Ekleme
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (1, 'Korkmaz', 'Serkan', 'Genel Müdür', TO_DATE('10-01-1980', 'DD-MM-YYYY'), TO_DATE('15-06-2010', 'DD-MM-YYYY'), 1, '10 yıllık deneyim', NULL);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (2, 'Arslan', 'Elif', 'Satış Müdürü', TO_DATE('05-05-1985', 'DD-MM-YYYY'), TO_DATE('20-07-2015', 'DD-MM-YYYY'), 2, '5 yıllık deneyim', 1);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (3, 'Yıldız', 'Can', 'Satış Temsilcisi', TO_DATE('15-08-1990', 'DD-MM-YYYY'), TO_DATE('10-01-2018', 'DD-MM-YYYY'), 3, 'Yeni mezun', 2);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (4, 'Güneş', 'Aylin', 'Satış Temsilcisi', TO_DATE('20-03-1992', 'DD-MM-YYYY'), TO_DATE('05-05-2019', 'DD-MM-YYYY'), 4, 'Part-time çalışıyor', 2);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (5, 'Bulut', 'Cem', 'Muhasebe', TO_DATE('12-11-1988', 'DD-MM-YYYY'), TO_DATE('01-03-2017', 'DD-MM-YYYY'), 5, 'CPA sertifikalı', 1);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (6, 'Deniz', 'Selin', 'İnsan Kaynakları', TO_DATE('25-04-1983', 'DD-MM-YYYY'), TO_DATE('10-09-2016', 'DD-MM-YYYY'), 6, 'İşe alım uzmanı', 1);
INSERT INTO employees (employee_id, last_name, first_name, emp_title, birth_date, hire_date, address_id, notes, reports_to) VALUES (7, 'Taş', 'Burak', 'Depo Sorumlusu', TO_DATE('08-07-1991', 'DD-MM-YYYY'), TO_DATE('15-11-2020', 'DD-MM-YYYY'), 7, 'Lojistik deneyimi var', 1);

-- Suppliers Tablosuna Veri Ekleme
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (1, 'Teknosa', 'Ali Tekin', 'Satış Müdürü', 1, '+902165543211', 'www.teknosa.com');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (2, 'LC Waikiki', 'Ayşe Kumaş', 'İletişim Sorumlusu', 2, '+902322123457', 'www.lcwaikiki.com');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (3, 'İkea', 'Mehmet Mobilya', 'Bölge Müdürü', 3, '+902422345679', 'www.ikea.com.tr');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (4, 'D'||'&'||'R', 'Fatma Kitap', 'Mağaza Müdürü', 4, '+903124567891', 'www.dr.com.tr');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (5, 'Decathlon', 'Ali Spor', 'Satış Sorumlusu', 5, '+904623456790', 'www.decathlon.com.tr');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (6, 'Watsons', 'Zeynep Kozmetik', 'Bölge Müdürü', 6, '+904422345679', 'www.watsons.com.tr');
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address_id, fax, homepage) VALUES (7, 'Toyzz Shop', 'Mustafa Oyuncak', 'Satış Temsilcisi', 7, '+904122345679', 'www.toyzzshop.com.tr');

-- Shippers Tablosuna Veri Ekleme
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (1, 'Aras Kargo', '+902123456789');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (2, 'Yurtiçi Kargo', '+902123456788');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (3, 'MNG Kargo', '+902123456787');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (4, 'PTT Kargo', '+902123456786');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (5, 'Sürat Kargo', '+902123456785');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (6, 'UPS', '+902123456784');
INSERT INTO shippers (shipper_id, company_name, phone) VALUES (7, 'DHL', '+902123456783');

-- Products Tablosuna Veri Ekleme
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (1, 'Akıllı Telefon', 1, 1, '1 adet', 8999.990, 50, 10, 0);
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (2, 'Kot Pantolon', 2, 2, '1 adet', 299.990, 100, 20, 0);
--burada
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (3, 'Yemek Takımı', 3, 3, '12 parça', 499.990, 30, 5, 0);
--burada
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (4, 'Roman Kitabı', 4, 4, '1 adet', 49.990, 200, 0, 0);
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (5, 'Futbol Topu', 5, 5, '1 adet', 199.990, 40, 15, 0);
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (6, 'Nemlendirici Krem', 6, 6, '50 ml', 89.990, 80, 10, 0);
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, discontinued) VALUES (7, 'Lego Seti', 7, 7, '250 parça', 349.990, 25, 5, 0);

-- Orders Tablosuna Veri Ekleme
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (1, 1, 3, TO_DATE('10-01-2023', 'DD-MM-YYYY'), TO_DATE('15-01-2023', 'DD-MM-YYYY'), TO_DATE('12-01-2023', 'DD-MM-YYYY'), 1, 15.00, 'Ahmet Yılmaz', 1);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (2, 2, 3, TO_DATE('12-01-2023', 'DD-MM-YYYY'), TO_DATE('17-01-2023', 'DD-MM-YYYY'), TO_DATE('14-01-2023', 'DD-MM-YYYY'), 2, 12.50, 'Ayşe Kaya', 2);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (3, 3, 4, TO_DATE('15-01-2023', 'DD-MM-YYYY'), TO_DATE('20-01-2023', 'DD-MM-YYYY'), TO_DATE('18-01-2023', 'DD-MM-YYYY'), 3, 20.00, 'Mehmet Demir', 3);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (4, 4, 4, TO_DATE('18-01-2023', 'DD-MM-YYYY'), TO_DATE('23-01-2023', 'DD-MM-YYYY'), TO_DATE('20-01-2023', 'DD-MM-YYYY'), 1, 10.00, 'Fatma Çelik', 4);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (5, 5, 3, TO_DATE('20-01-2023', 'DD-MM-YYYY'), TO_DATE('25-01-2023', 'DD-MM-YYYY'), TO_DATE('22-01-2023', 'DD-MM-YYYY'), 2, 18.00, 'Ali Şahin', 5);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (6, 6, 4, TO_DATE('22-01-2023', 'DD-MM-YYYY'), TO_DATE('27-01-2023', 'DD-MM-YYYY'), TO_DATE('25-01-2023', 'DD-MM-YYYY'), 3, 15.50, 'Zeynep Aksoy', 6);
INSERT INTO orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address_id) VALUES (7, 7, 3, TO_DATE('25-01-2023', 'DD-MM-YYYY'), TO_DATE('30-01-2023', 'DD-MM-YYYY'), TO_DATE('28-01-2023', 'DD-MM-YYYY'), 1, 22.00, 'Mustafa Öztürk', 7);

-- Order_Details Tablosuna Veri Ekleme
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (1, 1, 8999.99, 1, 0);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (1, 6, 89.99, 2, 0.10);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (2, 2, 299.99, 1, 0);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (3, 3, 499.99, 1, 0.15);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (4, 4, 49.99, 3, 0);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (5, 5, 199.99, 1, 0);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (6, 7, 349.99, 1, 0.20);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (7, 1, 8999.99, 1, 0.05);
INSERT INTO order_details (order_id, product_id, unit_price, quantity, discount) VALUES (7, 2, 299.99, 2, 0);

-- Payments Tablosuna Veri Ekleme
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (1, TO_DATE('10-01-2023', 'DD-MM-YYYY'), 9179.97, 'Credit Card', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (2, TO_DATE('12-01-2023', 'DD-MM-YYYY'), 312.49, 'Bank Transfer', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (3, TO_DATE('15-01-2023', 'DD-MM-YYYY'), 434.99, 'Credit Card', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (4, TO_DATE('18-01-2023', 'DD-MM-YYYY'), 159.97, 'EFT', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (5, TO_DATE('20-01-2023', 'DD-MM-YYYY'), 217.99, 'Credit Card', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (6, TO_DATE('22-01-2023', 'DD-MM-YYYY'), 294.99, 'Bank Transfer', 1);
INSERT INTO payments (order_id, payment_date, amount, payment_method, status) VALUES (7, TO_DATE('25-01-2023', 'DD-MM-YYYY'), 9349.98, 'Credit Card', 1);

-- Returns Tablosuna Veri Ekleme
INSERT INTO returns (order_id, product_id, return_date, reason, approved, quantity) VALUES (1, 6, TO_DATE('15-01-2023', 'DD-MM-YYYY'), 'Yanlış ürün gönderildi', 'Y', 1);
INSERT INTO returns (order_id, product_id, return_date, reason, approved, quantity) VALUES (3, 3, TO_DATE('22-01-2023','DD-MM-YYYY'), 'Kırık ürün', 'Y', 1);
INSERT INTO returns (order_id, product_id, return_date, reason, approved, quantity) VALUES (6, 7, TO_DATE('28-01-2023', 'DD-MM-YYYY'), 'Eksik parça', 'N', 1);

INSERT INTO categories (category_id, category_name, ctgs_description)
VALUES (9, 'Ev ve Yaşam', 'Ev dekorasyon ve yaşam ürünleri');

