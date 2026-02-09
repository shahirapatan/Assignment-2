CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20) UNIQUE,
    account_holder_name VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    branch_name VARCHAR(50)
);

INSERT INTO bank_accounts VALUES
(1, 'SB1001', 'Rahul Sharma', 'Savings', 25000.50, 'Hyderabad'),
(2, 'SB1002', 'Anjali Verma', 'Savings', 18000.00, 'Bangalore'),
(3, 'CR2001', 'Vikram Singh', 'Current', 75000.75, 'Delhi'),
(4, 'SB1003', 'Meena Rao', 'Savings', 32000.00, 'Chennai'),
(5, 'CR2002', 'Kiran Patel', 'Current', 90000.00, 'Mumbai');

SELECT * FROM bank_accounts;
SELECT * FROM bank_accounts
WHERE account_type = 'Savings' AND balance > 20000;
SELECT * FROM bank_accounts
WHERE branch_name = 'Delhi' OR branch_name = 'Mumbai';

SELECT * FROM bank_accounts
WHERE NOT account_type = 'Current';

SELECT * FROM bank_accounts
ORDER BY balance DESC;
SELECT * FROM bank_accounts
WHERE account_holder_name LIKE '%A%';