--UC1 Create Database
Create Database AddressBookService
use AddressBookService

--UC2 Create Table
Create TABLE Address_Book(
FirstName varchar(100),
LastName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
Zip BigInt,
PhoneNumber BigInt,
EmailAddress varchar(200))
select *from Address_Book

--UC3 Insert Contacts To AddressBook
INSERT INTO Address_Book(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailAddress) 
values
('Ankit','Rathore','Indiranagar','Lucknow','Uttar Pradesh',226953,9696992265,'asingh@gmail.com'),
('Karan','Singh','Park Road','Bangalore','Karnataka',169855,9901001152,'karan@gmail.com'),
('Riya','Verma','Avenue Road','Sitapur','Uttar Pradesh',226045,9450172185,'riya45@gmail.com'),
('Shreya','Shrivastav','Stadium Road','Noida','Uttar Pradesh',226001,9450136987,'shreyash12@gmail.com'),
('Gopal','Joshi','Kalyanpur','Deheradun','Uttarakhand',562348,9696335519,'gopala@gmail.com');
Select * from Address_Book

--UC4 Edit Existing Contact Using Name
UPDATE Address_Book
SET PhoneNumber=8960779857 WHERE FirstName='Ankit'
Select * from Address_Book

--UC5 Delete a Person Using Last Name
DELETE FROM Address_Book WHERE LastName='Verma'
Select * from Address_Book

--UC6 Get Contact information by city or state
SELECT * FROM Address_Book WHERE City='Lucknow' or State='Uttar Pradesh'

--UC7 Count of Address Book by State or City
SELECT Count(*),State,City
FROM Address_Book
GROUP BY State,City

--UC8 Sort Names Alphabetically
INSERT INTO Address_Book(FirstName,LastName,Address,City,State,Zip,PhoneNumber,EmailAddress) 
values('Binod','Singh','Gokhle Marg','Lucknow','Uttar Pradesh',226004,9450146236,'binod420@gmail.com')
SELECT *FROM Address_Book WHERE City='Lucknow' ORDER BY(FirstName)

--UC9 AddressBookName and Type Added
ALTER TABLE Address_Book
ADD AddressBookName varchar(200),
Type varchar(200);

UPDATE Address_Book
SET AddressBookName='FriendName',Type='Friends'
WHERE FirstName='Binod' or FirstName='Karan'

UPDATE Address_Book
SET AddressBookName='Brothers',Type='Family'
WHERE FirstName='Gopala' or FirstName='Ankit'

UPDATE Address_Book
SET AddressBookName='Colleague',Type='Profession'
WHERE FirstName='Shreya' 



