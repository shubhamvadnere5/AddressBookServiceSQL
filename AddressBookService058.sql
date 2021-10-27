---UC1 Create Database--
create database AddressBookService058;

--UC2 Create Table--
use AddressBookService058;
create table AddressBook
(
FirstName varchar(100) not null,
LastName varchar(50),
Address Varchar(200),
city varchar(150),
StateName varchar(100),
ZipCode int,
PhoneNum bigint,
EmailId varchar(100)
);
select * from AddressBook;

--UC3 Inserting Details in Table --
insert into AddressBook values('Bhushan', 'Kapale','Ulhasnagar','Thane','Maharashtra',421004,8888126666,'BhushanKapale@gmail.com'),
('Niraj', 'Kapale','kalyan','Mumbai','Maharashtra',421005,8888136666,'NirajKapale@gmail.com'),
('Siddhant','Wani','badlapur','Dhule','Maharashtra',421006,8888146666,'SiddhantWani@gmail.com'),
('Shubham', 'Vadnere','Mulund','Navi Mumbai','Maharashtra',421007,8888156666,'ShubhamVadnere@gmail.com'),
('Pavan', 'Patil','Ambernath','Pachora','Maharashtra',421008,8888166666,'PavanPatil@gmail.com')
select * from AddressBook;

--UC4 Edit Existing Contact using name--
update AddressBook set PhoneNum=9834471126 where FirstName='Shubham';
update AddressBook set EmailId='NirajKapale5@gmail.com' where FirstName='Niraj';
update AddressBook set city='Jalgaon' where FirstName='Siddhant';
select * from AddressBook;

--UC5 Delete Person using their name--
delete from AddressBook where FirstName='Pavan';
select * from AddressBook;

--UC6 Retrive Data Belongs to city and state--
select FirstName from AddressBook where city='Thane' or StateName='Maharashtra';
select * from AddressBook;

--UC7 Size or Count of addressbook using state and city--
Select Count(City) as Size,City,StateName from AddressBook group by StateName,City;

--UC8 Sorted name a;phabetically using city name--
select FirstName from AddressBook where City='Thane' order by FirstName;

--UC9 Add the new columns and adding the address book name and type--
alter table AddressBook add 
AddressBookName varchar(50),
Type varchar(50);
select * from AddressBook;
--Update the table--
update AddressBook set AddressBookName='BestFriend',Type='Friend' where FirstName='Niraj';
update AddressBook set AddressBookName='Brother',Type='Family' where FirstName='Bhushan';
update AddressBook set AddressBookName='Friend',Type='Friend' where FirstName='Siddhant';

--UC10 Count person by type--
Select count(Type)as Count,Type  from AddressBook group by Type;