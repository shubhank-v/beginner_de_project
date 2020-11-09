drop schema if exists retail cascade ;
CREATE SCHEMA retail;

drop table if exists retail.user_purchase cascade;
CREATE TABLE retail.user_purchase (
    invoice_number varchar(500),
    stock_code varchar(500),
    detail varchar(1000),
    quantity int,
    invoice_date timestamp,
    unit_price Numeric(8,3),
    customer_id int,
    country varchar(500)
);

--  \copy retail.user_purchase from 'setup/raw_input_data/retail/OnlineRetail.csv' delimiter ',' csv header;
COPY retail.user_purchase(invoice_number,
stock_code,detail,quantity,
invoice_date,unit_price,customer_id,country)
FROM 'setup/raw_input_data/retail/OnlineRetail.csv'
DELIMITER ','  CSV HEADER;