create database DemoDB;

use DemoDB;

drop table Person;

create table Person (
   name  char(50),
   address char(200),
   dob date,
   ownAHouse bit default 0
);

insert into Person values('A','Addr1','2001-01-21', 1);
insert into Person values('B','Addr2','2001-02-21', 0);
insert into Person values('AB','Addr1','2001-03-21', 1);
insert into Person values('AC','Addr3','2001-04-21', 0);
insert into Person(name, address) values('D','Addr2');

select * from Person;

select * from Person
order by dob desc;

select * from Person
order by dob;

select * from Person
order by ownAHouse, dob;

select * from Person
order by ownAHouse desc, dob;

select * from Person
order by 4;
