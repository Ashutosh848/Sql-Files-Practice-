--with totalsale as (
--select employeeId,sum(saleamount) as total_sum
--from salesdata
--group by employeeId)

--select * from totalsale;

with totalsale as (
select employeeId,sum(saleamount) as total_sum
from salesdata
group by employeeId)

select e.name,ts.total_sum
from employee e left join totalsale ts
on e.employeeid = ts.employeeid
where total_sum>1000;


with combine as(
select e.name,s.saleamount,s.saledate
from employee e left join salesdata s
on e.employeeid = s.employeeid)

select * from combine;

with new2 as (
select e.name,e.hiredate,sum(s.saleamount) as sum_of_employee
from employee e left join salesdata s
on e.employeeid = s.employeeid
group by e.name,e.hiredate)

select * from new2
where hiredate>'2021-01-01';


with new3  as(
select e.name,e.department,round(avg(s.saleamount),2) as avg_sales
from employee e left join salesdata s
on e.employeeid = s.employeeid
group by e.name,e.department having(department) = 'Sales'
)

select * from new3;



