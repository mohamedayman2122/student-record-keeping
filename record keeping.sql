create database record_keeping ;
use record_keeping ;
create table student (
student_id INT NOT NULL PRIMARY KEY  ,
student_name varchar(50) NULL ,
student_address varchar (50) null ,
apprection varchar(50) NULL 
);
select *from student;

create table acadimicyear (
acadimic_id int not null primary key ,
acadimic_Name varchar(50) null ,
degree int null ,
student_id int not null
);
select *from acadimicyear ;



create table subjectmean (
subject_id INT NOT NULL PRIMARY KEY ,
subject_name varchar(50) null , 
subject_degree int null ,
acadimic_id int not null ,
student_id int not null ,
foreign key  (student_id) References student (student_id) ,
foreign key  (acadimic_id ) References acadimicyear (acadimic_id ) 

);
select *from subjectmean ;


 
insert into student(student_id, student_name, student_address, apprection)
values(64354,'abdelrahman ahmed','cairo','excellent' );


insert into student(student_id, student_name, student_address, apprection)
values(64355,'abdelrahman mostafa','elgeza','excellent' );

insert into student(student_id, student_name, student_address, apprection)
values(64356,'abdellah elsead','banha','good' );


insert into student(student_id, student_name, student_address, apprection)
values(64357,'rashed goma','elharem','good' );

insert into student(student_id, student_name, student_address, apprection)
values(64358,'islam anwar','six october','good' );

select *from student ;

 
insert into acadimicyear(acadimic_id, acadimic_Name, degree, student_id)
values(708014,'second',480,64354 );

insert into acadimicyear(acadimic_id, acadimic_Name, degree, student_id)
values(708015,'third',490,64355 );

insert into acadimicyear(acadimic_id, acadimic_Name, degree, student_id)
values(708016,'forth',350,64356 );

insert into acadimicyear(acadimic_id, acadimic_Name, degree, student_id)
values(708017,'fifth',390,64357 );

insert into acadimicyear(acadimic_id, acadimic_Name, degree, student_id)
values(708018,'sixth',400,64358 );


SELECT *FROM acadimicyear ;

insert into subjectmean(subject_id, subject_name, subject_degree, student_id, acadimic_id) 
values(8012,'Arabic', 90,64354,708014);


insert into subjectmean(subject_id, subject_name, subject_degree, student_id, acadimic_id) 
values(8013,'english', 98,64355,708015);


insert into subjectmean(subject_id, subject_name, subject_degree, student_id, acadimic_id) 
values(8014,'math', 99,64356,708016);



insert into subjectmean(subject_id, subject_name, subject_degree, student_id, acadimic_id) 
values(8016,'science', 96,64357,708017);

 
insert into subjectmean(subject_id, subject_name, subject_degree, student_id, acadimic_id) 
values(8017,'geographic',94,64358,708018);


select *from subjectmean;



 select * from student where student_id  in ( select distinct acadimic_id from acadimicyear);
 
 select * from student where student_id not in (select distinct subject_id from subjectmean) ;

  select * from acadimicyear where acadimic_id not in (select distinct subject_id from subjectmean) ;

  select COUNT(acadimic_id) as Count_acadimicyear  from acadimicyear group by acadimic_id ;

select COUNT(student_id) as Count_student  from student group by student_id ;

update acadimicyear
set acadimic_Name = 'mohasen ali' 
where acadimic_id = 708014 ;
 
update acadimicyear
set acadimic_Name = 'ahmed ali' 
where acadimic_id = 708015 ;

update acadimicyear
set acadimic_Name = 'mousa alaa' 
where acadimic_id = 708016 ;

update acadimicyear
set acadimic_Name = 'yousef hamada' 
where acadimic_id = 708017 ;



update acadimicyear
set acadimic_Name = 'moustafa alaa' 
where acadimic_id = 708018 ;


delete from subjectmean
where subject_id = 8012 ;

delete from subjectmean
where subject_id = 8013 ;

delete from subjectmean
where subject_id = 8014 ;

delete from student
where student_id = 64354 ;

delete from student
where student_id = 64355 ;