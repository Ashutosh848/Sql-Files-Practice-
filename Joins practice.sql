select c1.customer_name as customer,c2.customer_name as referrer from 
customers c1 left join customers c2 on c1.referrer_id = c2.customer_id;

select c.customer_name,o.order_id from customers c left join
orders o on c.customer_id = o.customer_id where o.order_id is null;

select p.product_name,c.category_name 
from products p inner join categories c
on p.category_id = c.category_id 
order by c.category_name;

select c.category_name,count(p.product_id) 
from categories c inner join products p on c.category_id = p.category_id
group by c.category_name;


select c.category_name,p.product_id 
from categories c left join products p
on c.category_id = p.product_id
where product_id is null;

select c.category_name,max(p.price)
from categories c inner join products p
on c.category_id = p.category_id group by c.category_name;

