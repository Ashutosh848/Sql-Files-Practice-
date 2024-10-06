create view employeesalary as
select employee_id,employee_name,salary from emp;

create view empdepartment as 
select e.employee_name,d.department_name
from emp e left join departments d
on e.department_id = d.department_id;

create view DepartmentAverageSalary as
select d.department_id,avg(e.salary)
from departments d left join emp e
on d.department_id = e.department_id
group by d.department_id;

create view highearn as 
select employee_name,salary
from emp where salary>10000;

##Yes it is possible to update data in the view with normal update query.
##update highearn set salary>4000 where name = "Ashutosh";
##We cannot update a view when we have used joins in it.Because it contains more than 2 tables in it.

create view display as
select employee_id,employee_name,salary
from emp where salary>7000;

##Drop view display;

create view empdetail as
select e.employee_id,e.employee_name,d.department_name
from emp e left join departments d
on e.department_id = d.department_id
left join manager m 
on e.employee_id = m.employee_id;


create index idx_employee_name on emp(employee_name);

create index idx_employee_department on emp(employee_id,department_id);

create unique index idx_unique_employee_email on emp(employee_name);

drop index idx_unique_employee_email on emp;

create index new on employeesalary(salary);

	
