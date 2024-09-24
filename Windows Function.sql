
select *,avg(salary) over(partition by position) as emp from employee;
#Row Number= helps in defining the row a number(We can partition it according to the needs)
SELECT *,
row_number() OVER(partition by position order by position asc) as rn FROM EMPLOYEE;

#Rank() = This function is used to rank salary based on the department(Remember that we have to use order by caluse with this.)
select * from (select *, rank() over(partition by position order by salary desc) as x from employee) y
where y.x<3;

#Dense Rank() = The only difference between rank() and denserank() is is that for every duplicate value
# rank() function skips a number whereas dense_rank() does not skip any value.
select * from (select *, rank() over(partition by position order by salary desc) as x from employee) y
where y.x<3;

select *,lead(salary) over(partition by position order by salary)as emp from employee;













select * from employee;
select employeeID,FirstName,FamilyName,position,count(salary) over(partition by position)
as minimum_sal from employee;

select employeeID,FirstName,FamilyName,position, row_number() over(partition by position)
as rn from employee;

select employeeID,FirstName,FamilyName,position,salary,rank() over(partition by position order by salary asc) as ran from employee;

insert into employee values(101,"Ashutosh","Tiwari","Data Engineer",50000.0,"2020-9-1"),(101,"Ashutosh","Tiwari","Data Engineer",60000.0,"2020-9-1");

select *,dense_rank() over(partition by position order by salary asc) as ran from employee;

select * ,lag(salary) over() as fkaj from employee;
select * ,lead(salary) over() as dka from employee;

