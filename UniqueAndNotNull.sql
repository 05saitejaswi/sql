
use DemoDB;

drop table Person;

create table Person (
  name char(50) unique not null,
  address char(200),
  dob date not null
);

insert into Person values('A','Addr1', '2001-03-21');
insert into Person values('A', 'Addr2', '2001-03-22');
insert into Person values(null, 'Addr2', '2001-03-22');


select * from Person;