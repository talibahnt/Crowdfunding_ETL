DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;

CREATE TABLE category
(category_id VARCHAR(10) PRIMARY KEY,
category VARCHAR(20) NOT NULL);

CREATE TABLE subcategory
(subcategory_id VARCHAR(10) PRIMARY KEY,
subcategory VARCHAR(20) NOT NULL);

CREATE TABLE contacts
(contact_id INT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(40) NOT NULL,
email VARCHAR(100) NOT NULL);

CREATE TABLE campaign
(cf_id INT PRIMARY KEY,
contact_id INT NOT NULL,
company_name VARCHAR(40) NOT NULL,
description TEXT NOT NULL,
goal NUMERIC(10,1) NOT NULL, 
pledged NUMERIC(10,1) NOT NULL,
outcome VARCHAR(20) NOT NULL,
backers_count INT NOT NULL,
country VARCHAR(2) NOT NULL,
currency VARCHAR(3) NOT NULL, 
launched_date DATE NOT NULL,
end_date DATE NOT NULL, 
category_id VARCHAR(10) NOT NULL,
subcategory_id VARCHAR(10) NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;

SELECT *
FROM campaign;

