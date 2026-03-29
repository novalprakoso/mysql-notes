show databases;
use classicmodels;
show tables;
describe employees;

select * from employees;
select `lastName`, `firstName`, `reportsTo`
from employees
where `reportsTo` is null;


///studi kasus 1: membuat query orderdetails dengan quantityOrdered di atas 40///
select * from orderdetails
where `quantityOrdered` >40;


///studi kasus 2: membuat query dari table orders yang statusnya On Hold, Disputed, Cancelled///
select * from orders
where `status` in ('On Hold', 'Disputed', 'Cancelled');


