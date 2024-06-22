create database project_db;
use project_db;
select * from financial_loan_dataset;

select count(id) as app from financial_loan_dataset;

select sum(loan_amount) as total_amount_funded from financial_loan_dataset;
select sum(total_payment) as total_amount_recived from financial_loan_dataset;
select avg(int_rate)*100 as avg_int_rate from financial_loan_dataset;
select round(avg(int_rate),2)*100 as avg_int_rate from financial_loan_dataset;
select avg(dti)*100 as avg_dti from financial_loan_dataset;

#good loan

select loan_status from financial_loan_dataset;
select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end ) ) from financial_loan_dataset ;
select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end ) )  as good_loan_applications  from financial_loan_dataset ;
select sum(loan_amount) as good_loan_amount from financial_loan_dataset where loan_status ='Fully Paid' or loan_status= 'Current';
select sum(total_payment) as good_loan_received_amount from financial_loan_dataset where loan_status = 'Fully Paid' or loan_status = 'Current';

#bad loan
select (count(case when loan_status = 'Charged Off' then id end)*100)/count(id) as bad_loan_persent from financial_loan_dataset;
select (count(case when loan_status = 'Charged Off' then id end)) as bad_loan_count from financial_loan_dataset;
select sum(loan_amount) as bad_loan_amount from financial_loan_dataset where loan_status = 'Charged Off';
select sum(total_payment) as bad_loan_received_amount from financial_loan_dataset where loan_status = 'Charged Off';















