create table product(product_name varchar(100),supplierID int(10));
create table supplier(supplierID int(10),supplier_name varchar(100));

insert into product values("Planet oat oatmilk",1),("Honey nut froasted flakes",2),
("Magnum double tub",5),("Sour Patch MarshMalllows",3),("Ferrero Eggs",4);

insert into supplier values(1,"john"),(2,"Anna"),(3,"Robert"),(4,"Jerry"),(5,"Tim");


update supplier set supplierID = 6 where supplier_name = "Jerry";

select * from supplier;

select product.product_name,supplier.supplierID from product inner join
supplier on product.supplierID = supplier.supplierID;

select product.product_name,supplier.supplierID from product right join
supplier on product.supplierID = supplier.supplierID;

select * from product;
select * from supplier;

select product.product_name,supplier.supplierID from product left join
supplier on product.supplierID = supplier.supplierID
union
select product.product_name,supplier.supplierID from product right join
supplier on product.supplierID = supplier.supplierID;


select product.product_name,supplier.supplierID from product cross join supplier;

select product.product_name,supplier.supplierID from product natural join supplier;

select product.product_name,supplier.supplierID from product right join
supplier on product.supplierID = supplier.supplierID;

select a.product_name,b.supplierID from product a,product b where a.supplierID = b.supplierID;
