
use DemoDB;

create table UserProfile(
   userProfileID int primary key auto_increment,
   firstName  varchar(50) not null,
   lastName   varchar(50) not null,
   middleName varchar(50), 
   userName   varchar(20) unique not null,
   password   varchar(20),
   email      varchar(50) unique not null,
   isActive   bit not null default 1,
   isLocked   bit not null default 0,
   createdDTTM datetime not null default now(), 
   lastModifiedDTTM datetime
);

-- Keys
--   userProfileID - Primary Key (unique + not null) - only one primary key per table.
--   userName
--   email


desc UserProfile;