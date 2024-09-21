#Views
#A view is a virtual table based on the result of sql queries.
#Unlike a regular table view does not store data into it.
#Instead it stores a query that pulls  data from one or more tables whenever needed.
#It enhances Security by showing data which is only needed by the user.
#Creating a view
create view sales as
select * from main where name rlike "^[amy]";
#Calling a view
select * from sales;

#Rules While creating a view
#.Cannot change column name
alter table main rename column email to em;
select * from sales;

#Cannot add a new column.The table will show the new column but the view will not show it.
alter table main add column phone varchar(100);
select * from main;

#Cannot change the datatype of a column as it will not update the datatype in view.
alter table main modify column id text;
select * from main;

#Alter view allows us to change the name,datatype of a column.
#Inserting a new row in the main table will be always visible to the views that are created.
insert into main values(4,'Ajay','ajay@gmail.com','7357898333');
select * from sales;

#If we update a row in views then the changes in the data will be also visible to the main table.
update sales set name = "Ashu" where id = 1;
select * from sales;
select * from main;

#If we have created a view that works on more than 1 table then the views will not work
#A view Cannot work with distinct clause;
# A view connot work with groupby clause;