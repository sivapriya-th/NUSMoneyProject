select * from customer;
select * from transactions;
select * from account;

select a.account_id, t.transaction_id 
from
customer c 
LEFT JOIN account a on c.cust_id = a.cust_id
LEFT JOIN transactions t on a.account_id = t.account_id
where a.cust_id = 119


select a.account_id, t.transaction_id 
from
customer c 
LEFT JOIN account a on c.cust_id = a.cust_id
LEFT JOIN transactions t on a.account_id = t.account_id
where a.cust_id = 118



select *
from account a
left join customer c on a.cust_id = c.cust_id
where a.cust_id = 1

delete t from transactions t 
left join account a on t.account_id = a.account_id
where a.cust_id = 1

delete a
from account a
left join customer c on a.cust_id = c.cust_id
where a.cust_id = 1

delete c
from customer c
where c.cust_id = 1 

INSERT INTO 
customer (first_name, last_name, email, contact_number)
VALUES ('Test Deletion', 'Ali', 'faszemix@gmail.com', '94382739');

--INSERT INTO 
--customer (first_name, last_name, email, contact_number)
--VALUES ('Test Deletion2', 'Anwardeen', 'fayaz123@gmail.com', '94384739');

select * from customer;

INSERT INTO 
account (account_no, cust_id,bank_name,total_balance)
VALUES ('123456', '120','DBS', '200');

INSERT INTO 
account (account_no, cust_id, bank_name,total_balance)
VALUES ('4568237', '120','POSB', '900');

select * from account;

INSERT INTO 
transactions (transaction_date, withdrawal_amount,deposit_amount,balance,account_id)
VALUES (NOW(), 120,200,80,20);


INSERT INTO 
transactions (transaction_date, withdrawal_amount,deposit_amount,balance,account_id)
VALUES (NOW(), 12,20,8,20);
INSERT INTO 
transactions (transaction_date, withdrawal_amount,deposit_amount,balance,account_id)
VALUES (NOW(), 12,20,8,21);


select * from transactions;

describe transactions;


delete t from transactions t 
      left join account a on t.account_id = a.account_id
      where a.cust_id = 113;
      
      delete a
      from account a
      left join customer c on a.cust_id = c.cust_id
      where a.cust_id = 113;
      
      delete c
      from customer c
      where c.cust_id = 113