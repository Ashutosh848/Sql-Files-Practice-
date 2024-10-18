select name,sale_amount,region,ranks
from (select name,sale_amount,region,rank() over(partition by region order by sale_amount desc)
as ranks from sales) as sub
where ranks = 1;

select name,sale_amount,lag(sale_amount) over(order by sale_amount desc) as comparison
from sales;

select name,sale_amount,sum(sale_amount) over(order by sale_amount desc) as sum_sale,avg(sale_amount) over(order by sale_amount desc) as avg_sale
from sales;

select name,sale_amount,lead(sale_amount) over(partition by name order by sale_amount desc) as lead_amount,
lag(sale_amount) over(partition by name order by sale_amount desc) as lag_amount,
(lead(sale_amount) over(partition by name order by sale_amount desc)-lag(sale_amount) over(partition by name order by sale_amount desc)) as camparison
from sales;


