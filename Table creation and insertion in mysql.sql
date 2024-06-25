use organisation;
create table D_32(
Roll_No INT PRIMARY KEY auto_increment,
Name VARCHAR(20) not null,
Age INT check(Age between 18 and 60),
Gender CHAR(6),
Elective_Course VARCHAR(20) default 'CS',
Phone INT unique,
F_income INT 
);
describe D_32;
create table Department(
D_Name VARCHAR(20),
Roll_No INT,
Foreign key(Roll_No) references D_32(Roll_No) on delete cascade
);
describe Department;
insert into D_32 values(1,'arun',20,'Male',default,'987456321',2500);
insert into D_32 values(2,'Anu',20,'Male',default,'987456221',2500);
insert into D_32 values(3,'sharan',20,'Male',default,'887456221',2550);
insert into D_32 values(4,'Amal',20,'Male',default,'987444221',2200);
insert into D_32 values(5,'sanu',20,'Male',default,'887456281',2500);
select* from D_32;
