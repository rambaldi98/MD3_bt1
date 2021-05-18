create database if not exists student_manager;
use student_manager;
create table class(
    class_id int  auto_increment primary key ,
    class_name varchar(50),
    class_language varchar(50),
    class_description varchar(50)
);
create table address(
    address_id int  auto_increment primary key ,
    address_address varchar(50) not null
);
create table students(
    student_id int auto_increment unique primary key ,
    student_fullname varchar(50),
    address_id int,
    student_phone int(50) unique,
    class_id   int not null,
    foreign key (address_id) references address(address_id),
    foreign key (class_id) references class(class_id)
);
create table course(
  course_id int  auto_increment primary key,
  course_language varchar(50),
  course_description varchar(50)
);

create table point(
    point_id int  auto_increment primary key,
    course_id int,
    student_id int,
    point numeric(2,2) not null default 0 check ( point between 0 and 10),
    foreign key (course_id) references course(course_id),
    foreign key (student_id) references students(student_id)
);
alter table point
modify column point float check ( point between 0 and 10);
alter table students
add constraint aotu_increment unique(student_id);