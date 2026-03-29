show databases;
use classicmodels;
show tables;
describe employees;
select * from employees
order by `lastName` desc, `firstName`;

select `lastName`, `firstName`,`jobTitle`
  from employees
  order by `lastName`;

describe orderdetails
select orderNumber, quantityOrdered * priceEach as subtotal
  from orderdetails
  order by subtotal desc;

//studi kasus 1: tampilkan harga satuan terbesar dari table orderdetails//
describe orderdetails;
select * from orderdetails
order by `priceEach` desc;

//studi kasus 2: tampilkan data customers yang terurut secara alfabet berdasarkan nama belakang//
select * from customers
order by `contactLastName`;