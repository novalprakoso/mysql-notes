show databases;
use classicmodels;
show tables;

select * from orderdetails;

select `ordernumber`, sum(quantityOrdered) items_count,
sum(priceEach * quantityOrdered) total_revenue
from `orderdetails`
group by ordernumber
having total_revenue > 20000
and items_count > 600
order by total_revenue;


select `orderNumber`, sum(quantityOrdered) items_count,
sum(priceEach * quantityOrdered) total_revenue
from `orderdetails`
where `priceEach` > 100
group by `orderNumber`
having total_revenue > 1000 AND items_count > 100

select o.status, sum(od.priceEach * od.quantityOrdered) total_revenue
from orders o INNER JOIN orderdetails od
using (orderNumber)
group by o.status
having total_revenue > 150000;

///studi kasus 1///
describe offices;
describe employees;
select * from offices;
select * from employees;

select officeCode, count(officeCode) total_employees
from employees
group by officeCode
having total_employees > 3;

select of.country, count(e.officeCode) total_employees
from employees e INNER JOIN offices of
using (officeCode)
group by of.country
having total_employees < 8;



