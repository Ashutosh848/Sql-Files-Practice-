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

#12

select name,salary,avg_salary
from
(select name,salary,avg(salary) over(partition by department_id) as avg_salary from emp) as sub
where salary>avg_salary;

#Q13
select name,department_id,salary,max(salary) over(partition by department_id) from emp;

#14
select name,hire_date,rank()
over(order by hire_date) from emp;

#15
SELECT name, department_id, salary
FROM (
    SELECT name, department_id, salary,
           ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS ranked
    FROM emp
) AS ranked_salaries
WHERE ranked = 1;

#17

select name,lag(salary) over(order by salary) from emp;

#18

select name,first_value(name) over(partition by department_id)
,last_value(name) over(partition by department_id)
from emp;

#20

select name,salary
from(select name,salary,dense_rank() over(order by salary desc) as ranked
from emp) as sub 
where ranked=1;


