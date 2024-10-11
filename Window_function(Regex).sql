#Q1
select name,salary,rank() over(order by salary desc) from emp;
#2
select name,sum(salary) over(order by salary desc) from emp ;
#Q3
select hire_date,avg(salary) over(order by hire_date asc) from emp;
#Q4

select name,salary,top_3_sal
from (select name,salary,row_number() 
over(partition by department_id order by salary desc) as top_3_sal
from emp) as sub where top_3_sal<=3;

#Q6

select name,department_id,first_value(salary) over(partition by department_id order by hire_date)
,last_value(salary) over(partition by department_id order by hire_date) from emp;

#Q7

select name,sum(salary) over(order by hire_date) from emp;

#Q8

select *,rank() over(partition by department_id order by salary desc) from emp;

#Q9

select name,salary,department_id,
lag(salary) over(partition by department_id order by hire_date) as prev_sal,salary-
lag(salary) over(partition by department_id order by hire_date) as diff from
emp;

#Q10

select name,salary,rank_salary
from
(select name,salary,rank() over(order by salary desc) as rank_salary from emp) as sub
where rank_salary=5;

#11

select name,salary,department_id,avg(salary) over(partition by department_id)
from emp;





