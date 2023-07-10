create database bank;
use bank;
create table employee(
e_id int,
e_name varchar(30) NOT NULL,
e_salary int check(e_salary>3000) ,
b_name varchar(10),
B_ID int primary key not null);
insert into employee values (1,'akash',20000,'ecr',1),(2,'naveen',30000,'eggmore',2),(3,'sanjai',40000,'harur',3),
(4,'kavin',45000,'mysore',4),(5,'jagath',43556,'magalaya',5),(6,'karthi',6000,'salem',6),(7,'mukenth',85000,'nilagrii',7),(8,'pravin',3500,'munnar',8),(9,'bala',54000,'ooty',9),
(10,'phraba',35000,'yelagrii',10),(11,'varun',65000,'chennai',11),(12,'venkey',45000,'rayapuram',12),(13,'vasanth',85000,'valasure',13),
(14,'raja',35000,'rkroad',14),(15,'mohan',55000,'erode',15);
select  * from employee order by e_id;
create table b_customers(
B_id int,
accountNumber int,
pin int,
c_name varchar(30),
balance int ,
acc_type varchar(30),
c_addres varchar(30) default 'unavaiable');
insert into b_customers values(1,123,234,'tharun',4567899,'savings','harur'),
(2,234,9876,'raja',7654,'saving','salem'),(3,23,2345,'vijai',374890,'saving','salem'),(4,456,3456,'rani',364758,'saving','manaparai'),
(5,556,678,'vishal',2134,'saving','salem'),(6,65738,698,'praveen',9866,'saving','salem'),(7,748,9647,'surya',7685930,'saving','salem'),
(8,897,86975,'sujitha',7689,'saving','kochin'),(9,9875,8679,'raja',465768,'saving','salem'),(10,1099,3759,'karthi',86749,'saving','harur');
select *from b_customers;
from b_customers inner join employee on employee.B_ID=b_customers.B_id;
select*from b_customers order by b_id;
