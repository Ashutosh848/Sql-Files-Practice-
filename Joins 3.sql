select c.Name,count(o.orderID)
from customers c left join orders o
on c.CustomerID = o.customerID group by c.Name;

select o.customerID,avg(o1.TotalAmount) 
from orders o left join orders o1
on o.OrderID = o1.OrderID group by o.customerID;  

select sum(s.SaleAmount) as Sum_Of_Amount,p.productname
from sales s inner join products p
on s.productID = p.productID group by p.productname;

select c.Name,sum(t.totalspending) as spending
from customers c inner join customers t
on c.customerID = t.customerID group by c.Name order by spending desc;

select * from orders;

select o.orderdate,count(o1.OrderID)
from orders o left join orders o1
on o.orderID = o.customerID group by o.orderdate;

select p.productname,avg(o.Quantity) as Avg_Quantity
from products p inner join orderdetails o 
on p.productID = o.productID group by p.productname;	

select c.Name,o.orderID,sum(o.totalamount) as total
from customers c left join orders o
on c.customerID = o.CustomerID group by c.Name,o.orderID;

select p.productname,sum(s.saleamount) as amount 
from products p inner join sales s
on p.productID = s.productID group by p.productname
order by amount desc;

select s.saledate,sum(s1.saleamount)
from sales s left join sales s1 
on s.saleID = s1.saleID group by s.saledate; 

select c.name,sum(o.totalamount),avg(o.totalamount)
from customers c inner join orders o
on c.customerID = o.customerID
group by c.name;

select o.orderID,sum(s.saleamount)
from orders o inner join sales s
on o.orderID = s.orderID
where s.saleamount<o.totalamount
group by o.orderID;

select p.productname,sum(saleamount) as total
from products p inner join sales s
on p.productID = s.productID
group by p.productname
having(total)>200;



