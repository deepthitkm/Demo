--
-- execise1
--
-- creating database
--
create database hotel_Management_System;
--
-- creating table
--
create table Customers(
Cust_ID int,  Cust_Name varchar(20), Cust_City varchar(25), Cust_RoomNo int
,CheckIn_Time DateTime);
--
-- Inserting 5 random data into table
--
insert into Customers
(Cust_ID, Cust_Name, Cust_City, Cust_RoomNo, CheckIn_Time)
values(211, "Andy Sam", "Atlanta", 501, "2022/10/22 12:30:00"),
(112, "christopher", "New York", 309, "2022/10/27 11:01:00"),
(312, "Rechal", "Seattle", 100, "2022/07/19 11:30:00"),
(222, "Michel", "Austin", 303, "2022/09/02 11:40:00"),
(207, "Sam", "Denver", 312, "2022/08/07 12:45:00");

-- Printing the whole table
select * from customers;
-- Exercise 2
-- Print Distinct City from Table Customers and Print Count Distinct City from Table Customers.
select distinct City from Customers;
select count(distinct City) from customers;

-- Printing the least number of quantities and the highest number of quantities bought by the user consider
-- the OrderDetails Table
Select min(Quantity) from order_details;
Select max(Quantity) from order_details;

-- Printing the total and an average number of quantities ordered by users, consider the OrderDetails Table.
Select sum(Quantity) from order_details;
select avg(Quantity) from order_details;

-- Printing name of the product which is present at the 5th position till the 15th position from Productstable,
--  use LIMIT keyword.
select ProductID,ProductName from products order by ProductID limit 4,11;

-- Printing all the details of the supplier whose name consists of “A” at the second position from the Suppliers
-- table.
select * from suppliers where supplierName like '_a__%';

-- Printing the details of the customer who doesn’t stay in the USA and Canada from the Customers table
select customerName, Country from customers where Country != "USA"and country !="Canada";

-- Print the details of all the orders which were placed between
-- the year 2020 to 2021 also print the same in descending order
-- from the OrderDetails table
-- Since we don't have data for 2020 to 2021, i have selected the below dates to print the data.
select * from Orders where OrderDate between "1996-08-01" and "1996-12-01" order by orderDate desc;

-- Write a query to show the distinct city and their count from the Customers table.
select distinct(City) from customers;
select count(distinct City) as "Number of cities" from customers;

-- Write a query to fetch details of all employees excluding the
-- employees with first names, “Sanjay” and “Sonia” from the
-- Employees table.
select * from employees where FirstName != "Sanjay" and FirstName != "Sonia";

-- Duplicate a table as similar to the Suppliers table and name it as SupplierDetail.
create table SupplierDetail as select *from suppliers;

-- Delete customer details whose country is Venezuela and print the rest of the Customer table
Delete from Customers where country = "Venezuela";

-- checking to confirm if country venezuela is deleted
Select * from Customers where country = "Venezuela";















