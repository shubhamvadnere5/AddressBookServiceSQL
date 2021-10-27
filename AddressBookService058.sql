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
select * from AddressBook