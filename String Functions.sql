#Returns the length of the string.
select name,length(name) from employees;

#Concat => Used to combine two or more strings with a delimiter or else
select name,concat(name,"|",hire_date) from employees;

#Substring=>Used to get the substring of a string(Or used to extract a part of the string.)
select name,substring(name,4) from employees;

#Trim =>Trim function is used to trim or remove trailing or leading whitespaces from a string.
select name,trim(name) from employees;

#group concat => Mainly used with aggregate functions to concat values from multiple rows into a single row based onthe groupby result
select department_id,group_concat(distinct name separator ',')
from employees
group by department_id;

#Replace => Replaces the substring with new string
select name,replace(name,'J','H') from employees;

#Rpad => It is a function in mysql to add pads in a string with specific characters on the right side
select name,rpad(name,10,'##') from employees;

#lpad => It is a function in mysql to add pads in a string from left side
select name,lpad(name,12,'__') from employees;

