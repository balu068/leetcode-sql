select name as customers 
from Customers c
where NOT EXISTS (select customerId from Orders o WHERE  c.id = o.customerId)