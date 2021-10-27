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
