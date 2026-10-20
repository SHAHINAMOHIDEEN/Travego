show databases;
create database Travego;
use Travego;
create table Passenger (Passenger_id int primary key,Passenger_name varchar(10),Category varchar(10),
Gender varchar(5),Boarding_City varchar(15), Destination_City varchar(15),Distance int,Bus_Type varchar(10));
create table Price (id int primary key,Bus_Type varchar (10),Distance int,Price int);
insert into Passenger values (1,'Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper'),
(2,'Anmol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting'),(3,'Pallavi','AC','F','Panaji','Bengaluru',600,'Sleeper'),
(4,'Khushboo','AC','F','Chennai','Mumbai',1500,'Sleeper'),(5,'Udit','Non-AC','M','Trivandrum','Panaji',1000,'Sleeper'),
(6,'Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting'),(7,'Hemant','Non-AC','M','Panaji','Mumbai',700,'Sleeper'),
(8,'Manish','AC','M','Hyderabad','Bengaluru',500,'Sitting'),(9,'Piyush','AC','M','Pune','Nagpur',700,'Sitting');
insert into Price values (1,'Sleeper',350,770),(2,'Sleeper',500,1100),(3,'Sleeper',600,1320),(4,'Sleeper',700,1450),
(5,'Sleeper',1000,2200),(6,'Sleeper',1200,2640),(7,'Sleeper',1500,2700),(8,'Sitting',500,620),(9,'Sitting',600,744),
(10,'Sitting',700,868),(11,'Sitting',1000,1240),(12,'Sitting',1200,1488),(13,'Sitting',1500,1860);
select * from Passenger;
select * from Price;
select count(*) as Female_Passengers from Passenger where Gender='F' and Distance >=600;
select * from Passenger where Distance > 500 and Bus_Type ='Sleeper';
select * from Passenger where Passenger_name like'S%';
select P.Passenger_name,P.Boarding_City,P.Destination_City,P.Bus_Type,Pr.Price from Passenger P 
join Price Pr on P.Bus_Type = Pr.Bus_Type and P.Distance = Pr.Distance;
select P.Passenger_name,Pr.Price from Passenger P JOIN Price Pr on P.bus_Type=Pr.Bus_Type and 
P.Distance=Pr.Distance where P.Distance = 1000 and P.Bus_Type = 'Sitting';
select Bus_Type,Price from Price where Distance=(select Distance from Passenger where Passenger_name = 'Pallavi' 
and Boarding_City ='Bangaluru'and Destination_City ='Panaji');
update Passenger set Category = 'Non-AC' where Bus_Type ='Sleeper' and Passenger_id > 0;

