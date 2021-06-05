CREATE DATABASE GRP6_NUS_MONEY_DB;

CREATE TABLE CUSTOMER(
    cust_id INT NOT NULL AUTO_INCREMENT ,
    first_name VARCHAR(32) NOT NULL,
    4 VARCHAR(32),
    email VARCHAR(32) NOT NULL,
    contact_number VARCHAR(20) NOT NULL,
    UNIQUE(email),
    PRIMARY KEY (cust_id)
);

DESCRIBE Customer;

CREATE TABLE ACCOUNT(
    account_id INT NOT NULL AUTO_INCREMENT ,
    account_no BIGINT NOT NULL,
    bank_name VARCHAR(50) NOT NULL,
    cust_id INT NOT NULL,
    total_balance BIGINT NOT NULL DEFAULT 0,
    PRIMARY KEY (account_id),
    FOREIGN KEY(cust_id) REFERENCES customer(cust_id)

);

DESCRIBE ACCOUNT;

CREATE TABLE TRANSACTIONS(
    transaction_id INT NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    withdraw_amount DECIMAL NULL,
    deposit_amount DECIMAL NULL,
    balance DECIMAL NOT NULL DEFAULT 0,
    account_id INT NOT NULL,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY(account_id) REFERENCES account(account_id)
);

DESCRIBE TRANSACTIONS;