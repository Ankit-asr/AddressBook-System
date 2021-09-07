--UC1 Create Database
Create Database AddressBookService
--UC2 Create Table
Create TABLE Address_Book(
FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
Zip BigInt,
PhoneNumber BigInt,
EmailAddress varchar(200))
select *from Address_Book
