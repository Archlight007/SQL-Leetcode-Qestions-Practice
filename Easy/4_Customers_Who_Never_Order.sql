--CUSTOMERS WHO NEVER ORDER
select c.name AS Customers from customers c
left join orders o
on c.id = o.customerId
where o.customerid is null