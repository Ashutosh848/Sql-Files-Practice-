select emp.employee_name,departments.department_name from emp inner join
departments on emp.department_id = departments.department_id;

select d.department_id,d.department_name,e.employee_name from departments d
left join emp e on d.department_id = e.department_id;

select e.employee_name,m.manager_id from emp e left join emp m
on e.employee_id = m.manager_id;

select e.employee_name,d.department_name from emp e left join departments d
on e.department_id = d.department_id
union
select d.department_name,e.employee_name from departments d right join emp e on
d.department_id = e.department_id;

select d.department_name,count(e.employee_id) from departments d inner join
emp e on d.department_id = e.employee_id group by d.department_name;

select e.employee_name,p.project_name from emp e left join projects p 
on e.employee_id = p.project_id where p.project_name is null;

select e.employee_name,d.department_name from emp e inner join departments d
on e.department_id = d.department_id order by d.department_name;

select d.department_id,e.employee_name,e.employee_id from emp e left join
departments d on d.department_id = e.department_id where d.department_id is null;

select p.project_name,count(a.employee_id) from projects p left join assignment
a on p.project_id = a.project_id group by project_name;

select max(e.salary),d.department_name from emp e inner join departments d
on e.department_id = d.department_id
group by d.department_name;

select e.employee_name,d.department_name from emp e inner join 
departments d on e.department_id = d.department_id
 where d.department_name = "Sales";
 

select p.project_name from projects p
join assignment a on
p.project_id = a.project_id
group by p.project_name
having count(a.employee_id>2);

select e.employee_name,d.department_name from emp e inner join
departments d on e.department_id = d.department_id
where e.title = "Manager";

select e.employee_name,count(p.project_id) from emp e inner join
projects p on e.employee_id = p.project_id
group by e.employee_name;

SELECT d.department_name
FROM departments d
JOIN emp e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 5;

