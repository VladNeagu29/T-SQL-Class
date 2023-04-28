CREATE DATABASE Test_Aprilie2024
CREATE Table Customers (
CustomerID int primary key (CustomerID),
FirstName varchar (100) not null,
LastName varchar (100) not null,
EmailAdress varchar (max) not null,
PhoneNumber varchar (100) not null,
Address varchar(max)not null,
City varchar (100)not null,
StateOrProvince varchar (100)not null,
Country varchar (100)not null,
ZipOrPostalCode varchar (100) not null,
DateOfBirth date not null,
Gender varchar (20) not null,
CustomerType varchar (100) not null,
TotalSpent decimal not null,
LastPurchaseDate date not null,
LoyalityStatus varchar (100) not null);

Select * from Customers

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber, Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus)
values ('1', 'Andrei', 'Gheorghe', 'andreigh@gmail.com', '0722555897', 'Salcumului', 'Brasov', 'Transilvania', 'Romania', 
'500283', '8/5/1998', 'male', 'premium', '5000', '1/1/2023', 'power')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (2, 'Mioara', 'State', 'miostate@gmail.com', '0730587897', 'Nucului', 'ClujNapoca', 'Transilvania', 'Romania',
'500220', '12/1/1994', 'female', 'regular', '100', '12/21/2022', 'amateur')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (3, 'Marius', 'Cristur', 'mariusmariuscrst@gmail.com', '0723410890', 'Lanii', 'TgMures', 'Transilvania', 'Romania',
'51942', '10/29/1992', 'male', 'premium', '2050', '11/22/2019', 'amateur')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (4, 'Alexandra', 'Mizil', 'ale2007pissy@gmail.com', '0730274985', 'Eroilor', 'Bucuresti', 'CampiaRomana', 'Romania',
'2158963', '5/13/1997', 'female', 'premium', '10125', '4/28/2023', 'expert')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (5, 'Ionela', 'Traian', 'traianionela29@gmail.com', '0723192345', 'Florilor', 'Constanta', 'Dobrogea', 'Romania',
'51445', '2/14/2000', 'female', 'regular', '250', '3/9/2023', 'amateur')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (6, 'Stelian', 'Namaste', 'stelian_namaste@gmail.com', '0722441203', 'Crucii', 'Timisoara', 'Banat', 'Romania',
'500668', '8/30/1994', 'male', 'VIP', '45000', '5/4/2023', 'professional')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (7, 'Nina', 'Tanase', 'ninanina1994@gmail.com', '0730299564', 'Prunilor', 'BistritaNasaud', 'Maramures', 'Romania',
'500282', '8/7/2001', 'female', 'VIP', '50000', '2/2/2023', 'expert')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (8, 'Mihai', 'Mistrie', 'mihai_mis94@gmail.com', '0745897652', 'Martirilor', 'Suceava', 'Moldova', 'Romania',
'758000', '9/27/1998', 'male', 'regular', '100', '2/28/2023', 'amateur')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (9, 'Radu', 'Plesu', 'plesu_radu14@gmail.com', '0722210899', 'Primariei', 'Fagaras', 'Transilvania', 'Romania',
'500111', '7/15/1990', 'male', 'premium', '8000', '4/27/2023', 'power')

insert into Customers (CustomerID, FirstName,LastName,EmailAdress,
PhoneNumber,Address, City, StateOrProvince, Country, 
ZipOrPostalCode, DateOfBirth, Gender, CustomerType, TotalSpent,
LastPurchaseDate, LoyalityStatus) 
values (10, 'Mihaela Crina', 'Zimbiriu', 'mihacrina@gmail.com', '0710545897', 'Pietei', 'Craiova', 'Oltenia', 'Romania',
'500284', '8/15/1993', 'female', 'VIP', '98000', '4/23/2023', 'overpower')

Select * from Customers


select CustomerID, FirstName, LastName, CustomerType from Customers

select City from Customers
where City = 'Fagaras'

select LoyalityStatus from Customers

