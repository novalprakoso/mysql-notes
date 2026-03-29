show databases;
use classicmodels;
show tables;

select * from payments
order by amount desc;


select max(amount)
from payments;

select * from payments
where amount=120166.58;

select * 
from payments
where amount=(
    select max(amount)
    from payments
);

select e.firstname, e.lastname
from employees e INNER JOIN offices of
using(officeCode)
where of.country='USA';

select officeCode
from offices
where country='USA';

select firstname, lastname
from employees
where officeCode IN(
    select officeCode
    from offices
    where country='USA' 
);

select orderNumber, count(*) items
from orderdetails
group by orderNumber;

select AVG(t1.items), MAX(t1.items), MIN(t1.items)
from (
    select orderNumber, count(*) items
    from orderdetails
    group by orderNumber
) t1;

///studi kasus///
SELECT 
    o.ordernumber,
    o.orderdate,

    (SELECT p.productname
     FROM products p
     WHERE p.productcode = od.productcode
    ) AS productname,

    od.quantityordered,
    od.priceeach
FROM orders o,
     orderdetails od
WHERE o.ordernumber = od.ordernumber
ORDER BY o.ordernumber;

SELECT 
    o.orderNumber,
    o.customerNumber,
    (SELECT c.customerName
     FROM customers c
     WHERE c.customerNumber = o.customerNumber
    ) AS customerName,
    o.orderDate,

    (SELECT od.quantityOrdered
     FROM orderdetails od
     WHERE od.orderNumber = o.orderNumber
     LIMIT 1
    ) AS quantityOrdered,

    (SELECT od.priceEach
     FROM orderdetails od
     WHERE od.orderNumber = o.orderNumber
     LIMIT 1
    ) AS priceEach,

    (SELECT p.buyPrice
     FROM products p
     WHERE p.productCode = (
         SELECT od.productCode
         FROM orderdetails od
         WHERE od.orderNumber = o.orderNumber
         LIMIT 1
     )
    ) AS buyPrice,

    (SELECT c.phone
     FROM customers c
     WHERE c.customerNumber = o.customerNumber
    ) AS phone

FROM orders o
ORDER BY o.orderNumber;
