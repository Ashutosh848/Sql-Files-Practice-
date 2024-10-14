# Write your MySQL query statement below
select p.product_name,sum(o.unit) as unit
from products p inner join orders o
on p.product_id = o.product_id
group by p.product_id 
having(unit)>=100 
and min(o.order_date)>='2020-02-01' 
and max(o.order_date)<='2020-02-28';



