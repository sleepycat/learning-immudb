-- demo data from immudb

CREATE TABLE customers (id INTEGER, customer_name VARCHAR, email VARCHAR, address VARCHAR, city VARCHAR, ip VARCHAR, country VARCHAR, age INTEGER, active BOOLEAN, PRIMARY KEY id);
CREATE TABLE products (id INTEGER, product VARCHAR, price VARCHAR, PRIMARY KEY id);
CREATE TABLE orders (id INTEGER, customerID INTEGER, productID INTEGER, PRIMARY KEY id);

UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (1, 'Isidro Behnen', 'ibehnen0@mail.ru', 'ibehnen0@chronoengine.com', 'Arvika', '2.124.67.107', 'SE', 24, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (2, 'Claudianus Boldt', 'cboldt1@adobe.com', 'cboldt1@elpais.com', 'Kimhae', '125.89.31.130', 'KR', 30, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (3, 'Ginny Kelshaw', 'gkelshaw2@bbb.org', 'gkelshaw2@123-reg.co.uk', 'Nova Lima', '231.174.212.41', 'BR', 32, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (4, 'Paola Elverston', 'pelverston3@ox.ac.uk', 'pelverston3@cdc.gov', 'Morales', '114.130.229.206', 'GT', 33, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (1, 'Asa Antrum', 'aantrum0@apple.com', 'aantrum0@prweb.com', 'Selkirk', '193.5.161.248', 'CA', 46, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (2, 'Neila Rowena', 'nrowena1@google.ca', 'nrowena1@netscape.com', 'Liangdong', '65.163.125.159', 'CN', 39, true);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (3, 'Rex Massinger', 'rmassinger2@weibo.com', 'rmassinger2@jiathis.com', 'Jesús Menéndez', '165.100.211.115', 'CU', 28, false);
UPSERT INTO customers (id, customer_name, email, address, city, ip, country, age, active) values (4, 'Whit Shilton', 'wshilton3@amazonaws.com', 'wshilton3@cdbaby.com', 'Bobowo', '167.156.190.237', 'PL', 52, false);


UPSERT INTO products (id, product, price) values (1, 'Juice - V8, Tomato', '$4.04');
UPSERT INTO products (id, product, price) values (2, 'Grapes - Red', '$5.03');
UPSERT INTO products (id, product, price) values (3, 'Compound - Mocha', '$6.75');
UPSERT INTO products (id, product, price) values (4, 'Pear - Asian', '$1.10');
UPSERT INTO products (id, product, price) values (5, 'Wine - Mas Chicet Rose, Vintage', '$6.75');
UPSERT INTO products (id, product, price) values (6, 'Lady Fingers', '$5.32');
UPSERT INTO products (id, product, price) values (7, 'Shrimp - 31/40', '$9.04');
UPSERT INTO products (id, product, price) values (8, 'Pork - Bones', '$2.65');
UPSERT INTO products (id, product, price) values (9, 'Table Cloth 62x114 White', '$0.73');
UPSERT INTO products (id, product, price) values (10, 'Beef - Ground, Extra Lean, Fresh', '$7.29');


UPSERT INTO orders (id, customerID, productID) VALUES (1, 1, 1);
UPSERT INTO orders (id, customerID, productID) VALUES (2, 5, 2);
UPSERT INTO orders (id, customerID, productID) VALUES (3, 4, 3);
UPSERT INTO orders (id, customerID, productID) VALUES (4, 3, 4);
UPSERT INTO orders (id, customerID, productID) VALUES (5, 2, 5);
