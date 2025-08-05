CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE VARCHAR(15),
    HIRE_DATE DATE,
    JOB_TITLE VARCHAR(50),
    SALARY DECIMAL(10, 2),
    DEPARTMENT VARCHAR(50)
);

INSERT INTO EMPLOYEE (EMP_ID,FIRST_NAME, LAST_NAME, EMAIL, PHONE, HIRE_DATE, JOB_TITLE, SALARY, DEPARTMENT)
VALUES (
    00,
    'John',
    'Doe',
    'john.doe@example.com',
    '555-0101',
    '2020-05-15',
    'Developer',
    65000.00,
    'IT'
);

copy employee from 'D:/DA_20/SQL/day_15/employee_insert_queries_2000' DELIMITER ',' CSV HEADER;

select * from employee;

--------------table_3_with_8000_records-----------------


CREATE TABLE CUSTOMER (
    CUST_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE VARCHAR(20),
    ADDRESS VARCHAR(200),
    CITY VARCHAR(100),
    STATE VARCHAR(100),
    ZIP_CODE VARCHAR(20),
    COUNTRY VARCHAR(50)
);


INSERT INTO CUSTOMER ( CUST_ID,FIRST_NAME, LAST_NAME, EMAIL, PHONE, ADDRESS, CITY, STATE, ZIP_CODE, COUNTRY)
 VALUES (10001,'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St', 'New York', 'New York', '10001', 'USA');


copy customer from 'D:/DA_20/SQL/day_15/customer_data' DELIMITER ',' CSV HEADER;

select * from customer


-------------------------------table_4_with_10000_records----------------------------

CREATE TABLE TRANSACTION (
    TRANSACTION_ID INT PRIMARY KEy,
    CUST_ID INT,
    AMOUNT DECIMAL(10, 2),
    TRANSACTION_TYPE VARCHAR(50),
    TRANSACTION_DATE DATE,
    DESCRIPTION VARCHAR(255)
);

INSERT INTO TRANSACTION (TRANSACTION_ID, CUST_ID, AMOUNT, TRANSACTION_TYPE, TRANSACTION_DATE, DESCRIPTION)
VALUES (
    1,
    10001,
    150.00,
    'Purchase',
    '2023-10-01',
    'Purchase of electronics'
);

 
 copy transaction from 'D:/DA_20/SQL/day_15/transaction_data' DELIMITER ',' CSV HEADER;

 -------------------------5. new_bank_account table with 2000 records---------------------

 CREATE TABLE NEW_BANK_ACCOUNT (
    ACCOUNT_ID INT PRIMARY KEY,
    CUST_ID INT,
    BANK_ID INT,
    EMP_ID INT,
    ACCOUNT_TYPE VARCHAR(50),
    BALANCE DECIMAL(15, 2),
    OPENING_DATE DATE,
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
    FOREIGN KEY (BANK_ID) REFERENCES BANK(BANK_ID),
    FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID)
);

 copy transaction from 'D:/DA_20/SQL/day_15/new_bank_account_data' DELIMITER ',' CSV HEADER;

 select * from NEW_BANK_ACCOUNT
 
-----------------------------------------------------------------------------------------------


---------------------------- 6. table with features insurance, loans, fds----------------------


CREATE TABLE CUSTOMER_FEATURES (
    FEATURE_ID INT PRIMARY KEY,
    CUST_ID INT,
    HAS_INSURANCE BOOLEAN,
    LOAN_AMOUNT DECIMAL(12, 2),
    FD_AMOUNT DECIMAL(12, 2),
    INSURANCE_TYPE VARCHAR(50),  
    LOAN_TYPE VARCHAR(50),        
    FD_TENURE_MONTHS INT,
    FEATURE_DATE DATE
);


INSERT INTO CUSTOMER_FEATURES (FEATURE_ID, CUST_ID,HAS_INSURANCE,LOAN_AMOUNT,FD_AMOUNT,
INSURANCE_TYPE,LOAN_TYPE,FD_TENURE_MONTHS,FEATURE_DATE)
VALUES (1,1010,TRUE,350000.00,150000.00,'Life','Personal',36,'2025-08-05');

copy transaction from 'D:/DA_20/SQL/day_15/customer_features_100_records' DELIMITER ',' CSV HEADER;

---------------------------------------end tasks---------------------------------------------------


