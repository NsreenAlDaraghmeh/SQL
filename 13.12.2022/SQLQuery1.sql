create database nsreen;

create table customer1(
id int  ,
firstname varchar(20),
lastname varchar(20),
PRIMARY KEY (id),
);
select*from customer1 ;


create table order1(
id int  ,
product varchar(20),
price float,
total float,
PRIMARY KEY (price),
FOREIGN KEY (id) REFERENCES customer1,

);
select*from order1 ;


create table product1(
id int ,
kind varchar(20),
price float ,
PRIMARY KEY (id),
FOREIGN KEY (price) REFERENCES order1,
);
select*from product1 ;

INSERT INTO customer1 VALUES (22,'Nsreen','Nedal'),(12,'Lubna','Basel'),(1,'Ahmad','Odat');
INSERT INTO order1 VALUES (22,'Mercedes',25000,50000),(12,'Toyota',300000,60000),(1,'Ford',45000,50000);
INSERT INTO order1 VALUES (10,'E200',25000),(15,'RAV',300000),(30,'Fusion',45000);

SELECT customer1.firstname, Customer1.lastname
FROM customer1
INNER JOIN order1 ON Customer1.id=order1.id;

SELECT customer1.firstname, Customer1.lastname
FROM customer1
LEFT JOIN order1 ON Customer1.id=order1.id;

SELECT order1.product, order1.price , order1.total
FROM order1
LEFT JOIN customer1 ON Customer1.id=order1.id;


SELECT product1.kind , product1.price 
FROM product1
RIGHT JOIN order1 ON product1.price=order1.price;


SELECT product1.kind , product1.price 
FROM product1
FULL OUTER JOIN order1 ON product1.price=order1.price;


