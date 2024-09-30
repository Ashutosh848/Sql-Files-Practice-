#Q1
#select employees.*,departments.dept_name
#from employees inner join departments 
#on employees.id = departments.id;

#Q2
select customer.*,orders.customer.id from customers
left join orders on customer.id = orders.customer_id;

#Q3
select products.product_name,categories.category_name from products
inner join categories on products.category_id = category.id;

#Q4
select student.student_name,course.course_name,enrollment.st_id from student
left join courses on student.id = courses.id
left join enrollment on student.id = enrollment.student_id;

#Q5
select sales.id,sales.cust_id,cust_name from sales left join customer on
sales.id = cust.id;

#Q6
select orders.id,order_item.order_id,order_item.quantity,products.pro_name from orders
inner join order_item on orders.id = order_item.order_id
inner join products on orders.id = products.id;

#7
select books.title,author.named  from books inner join author on books.id = author.id;

#Q8
SELECT p.project_id, p.project_name, e.employee_id, e.employee_name
FROM projects p
LEFT JOIN employee_projects ep ON p.project_id = ep.project_id
LEFT JOIN employees e ON ep.employee_id = e.employee_id;

#Q9
select orders.id,orders.date,cust.cust_name from orders inner join customer on 
orders.id = cust.id where order.date >="Last Month" and order.date<="Last Month";

#Q10
select products.*,orders.order_id from products left join orders on products.id = orders.id where orders.id is null;