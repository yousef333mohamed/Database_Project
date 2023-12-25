CREATE DATABASE company;

USE company;

-- Company table
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(255),
    Location VARCHAR(255)
);

-- Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Contact VARCHAR(255),
    Address VARCHAR(255),
    PaymentTerms VARCHAR(255)
);

-- Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    ProductCategory VARCHAR(255),
    ProductDescription TEXT,
    ProductPrice DECIMAL(10, 2),
    CompanyID INT,
    SupplierID INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Clients table
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Age INT
);

-- Cart table
CREATE TABLE Cart (
    CartID INT PRIMARY KEY,
    Quantity INT,
    TotalCost DECIMAL(10, 2)
);


-- Order table
CREATE TABLE OrderTable (
    OrderID INT PRIMARY KEY,
    Contact VARCHAR(255),
    Address VARCHAR(255),
    CustomerID INT,
    CartID INT,
    FOREIGN KEY (CustomerID) REFERENCES Clients(ClientID),
    FOREIGN KEY (CartID) REFERENCES Cart(CartID)
);


-- OrderProduct table (assuming it's a many-to-many relationship between Order and Products)
CREATE TABLE OrderProduct (
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- OrderClient table (assuming it's a many-to-many relationship between Order and Clients)
CREATE TABLE OrderClient (
    ClientID INT,
    OrderID INT,
    PRIMARY KEY (ClientID, OrderID),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (OrderID) REFERENCES OrderTable(OrderID)
);




-- Payment table
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    PaymentType VARCHAR(255),
    Amount DECIMAL(10, 2),
    CartID INT,
    FOREIGN KEY (CartID) REFERENCES Cart(CartID)
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    SSN VARCHAR(15),
    Phone VARCHAR(15),
    Age INT,
    Salary DECIMAL(10, 2),
    Type VARCHAR(255),
    CompanyID INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);
insert into production.Payment(PaymentID,PaymentType,Amount)
values(12934,'cash',2.3),
	  (12341,'cash',3.4),
	  (12342,'cash',3.3),
	  (12343,'cash',3.1),
	  (12344,'cash',1.1),
	  (12345,'cash',3.9),
	  (12346,'cash',3.8),
	  (12347,'cash',3.7),
	  (12348,'cash',3.6),
	  (12349,'cash',3.5),
	  (12340,'cash',3.0),
	  (12356,'cash',9.1),
	  (12312,'cash',9.2),
	  (12376,'cash',9.5);

select * from production.Payment;

insert into production.Employees(EmployeeID,Name,SSN,Phone,Age,Salary,Type)
values(1266,'ahmed','12334687553','01235753870',10,2000.0,'male'),
	  (1299,'ahmed','12334687553','01235753870',20,3000.0,'male'),
	  (1222,'ahmed','12334687553','01235753870',30,4000.0,'male'),
	  (1211,'ahmed','12334687553','01235753870',40,1000.0,'male'),
	  (1239,'ahmed','12334687553','01235753870',50,5000.0,'male'),
	  (1238,'ahmed','12334687553','01235753870',60,6000.0,'male'),
	  (1237,'ahmed','12334687553','01235753870',70,7000.0,'male'),
	  (1236,'ahmed','12334687553','01235753870',80,8000.0,'male'),
	  (1235,'ahmed','12334687553','01235753870',90,9000.0,'male'),
	  (1234,'ahmed','12334687553','01235753870',42,21000.0,'male'),
	  (1233,'ahmed','12334687553','01235753870',43,22000.0,'male'),
	  (1232,'ahmed','12334687553','01235753870',44,29000.0,'male'),
	  (1231,'ahmed','12334687553','01235753870',45,27000.0,'male'),
	  (1277,'ahmed','12334687553','01235753870',49,25000.0,'male');

	  select * from production.Employees;

insert into production.Suppliers(SupplierID,Contact,Address,PaymentTerms)
values(1230,01245677811,'cairo','visa'),
	  (1232,01245677889,'cairo','visa'),
	  (1200,01245677898,'cairo','visa'),
	  (1234,01245677860,'cairo','visa'),
	  (1235,01245677869,'cairo','visa'),
	  (1236,01245677868,'cairo','visa'),
	  (1237,01245677867,'cairo','visa'),
	  (1238,01245677866,'cairo','visa'),
	  (1239,01245677864,'cairo','visa'),
	  (1231,01245677863,'cairo','visa'),
	  (1222,01245677862,'cairo','visa'),
	  (1233,01245677861,'cairo','visa'),
	  (1288,01245677865,'cairo','visa');

	  select * from production.Suppliers;

insert into production.Company(CompanyID,Name,Phone,Email,Location)
values(1230,'microsoft',01265364744,'asd21@gmail.com','cairo'),
	  (1231,'microsoft',01265364733,'asd21@gmail.com','cairo'),
	  (1232,'microsoft',01265364722,'asd21@gmail.com','cairo'),
	  (1233,'microsoft',01265364711,'asd21@gmail.com','cairo'),
	  (1234,'microsoft',01265364760,'asd21@gmail.com','cairo'),
	  (1235,'microsoft',01265364769,'asd21@gmail.com','cairo'),
	  (1236,'microsoft',01265364768,'asd21@gmail.com','cairo'),
	  (1237,'microsoft',01265364767,'asd21@gmail.com','cairo'),
	  (1238,'microsoft',01265364766,'asd21@gmail.com','cairo'),
	  (1239,'microsoft',01265364765,'asd21@gmail.com','cairo'),
	  (1222,'microsoft',01265364764,'asd21@gmail.com','cairo'),
	  (1223,'microsoft',01265364763,'asd21@gmail.com','cairo'),
	  (1225,'microsoft',01265364762,'asd21@gmail.com','cairo'),
	  (1227,'microsoft',01265364761,'asd21@gmail.com','cairo');

	  select * from production.Company;

insert into production.Products(ProductID,ProductName,ProductCategory,ProductDescription,ProductPrice)
values(1945,'mobiles','device tecnology','good',2100.1),
	  (1241,'mobiles','device tecnology','good',2200.1),
	  (1242,'mobiles','device tecnology','good',2300.3),
	  (1243,'mobiles','device tecnology','good',2400.9),
	  (1244,'mobiles','device tecnology','good',2600.7),
	  (1245,'mobiles','device tecnology','good',1000.1),
	  (1246,'mobiles','device tecnology','good',2000.1),
	  (1247,'mobiles','device tecnology','good',3000.0),
	  (1248,'mobiles','device tecnology','good',9000.0),
	  (1249,'mobiles','device tecnology','good',8000.0),
	  (1240,'mobiles','device tecnology','good',7000.0),
	  (1222,'mobiles','device tecnology','good',6000.0),
	  (1211,'mobiles','device tecnology','good',5000.0),
	  (1844,'mobiles','device tecnology','good',4000.0);

	   select * from production.Products;

insert into production.Clients(ClientID,FirstName,LastName,Age)
values(1130,'ahmed','ali',30),
	  (1231,'mostafa','ali',10),
	  (1232,'mohamed','ali',20),
	  (1233,'ibrahim','ali',40),
	  (1234,'yousef','ali',50),
	  (1235,'hoda','ali',60),
	  (1236,'eman','ali',70),
	  (1237,'nada','ali',80),
	  (1238,'shahd','ali',90),
	  (1239,'ahmed','ali',33),
	  (1222,'ahmed','ali',35);

	   select * from production.Clients;	
	   select * from production.Company;
	   select * from production.Suppliers;
	   select * from production.Employees;
       select * from production.Payment;
	   select * from production.Products;

	   update production.Clients
	   set Age =25
	   where ClientID=1231;

	   update production.Employees
	   set Age =90
	   where EmployeeID=1211;

	   update production.Products
	   set ProductDescription='bad'
	   where ProductID=1222;

	   update production.Suppliers
	   set Address='alex'
	   where SupplierID=1200;

	   update production.Payment
	   set PaymentType='visa'
	   where PaymentID=12312;

	   delete from production.Payment
	   where PaymentID = 12934;

	   delete from production.Products
	   where ProductID = 1945;

	   delete from production.Clients
	   where ClientID =1238;

	   delete from production.Company
	   where CompanyID =1230;

	   delete from production.Employees
	   where EmployeeID =1233;

	   select age
	   from production.Employees
	   where age <50;

	    select Name
	   from production.Employees
	   where age <50;

	   select Type
	   from production.Employees
	   where age <50;


	   select salary
	   from production.Employees
	   where age <70;

	   select ssn
	   from production.Employees
	   where age >20;

	   select Phone
	   from production.Employees
	   where age >20;

	   select productName
	   from production.Products
	   where ProductPrice<7000;

	    select ProductCategory
	   from production.Products
	   where ProductPrice<7000;

	   select ProductDescription
	   from production.Products
	   where ProductPrice<7000;

	   select PaymentType
	   from production.Payment
	   where Amount<9.00

	   select Amount
	   from production.Payment
	   where PaymentType='cash';

	   select PaymentTerms
	   from production.Suppliers
	   where Address ='cairo';

	   select Contact
	   from production.Suppliers
	   where Address ='cairo';

	   select phone 
	   from production.Company
	   where CompanyID>1230;

	   select Email 
	   from production.Company
	   where CompanyID>1230;

	   select Name 
	   from production.Company
	   where CompanyID>1230;

	   select Location 
	   from production.Company
	   where CompanyID>1230;

	   select clientID
	   from production.Clients
	   where age <70;

	   select FirstName
	   from production.Clients
	   where age <70;

	   select LastName
	   from production.Clients
	   where age <70;

