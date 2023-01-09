create table student(
    student_id integer auto_increment primary key,
    first_name text,
    last_name text,
    email text,
    age integer
);

select *
from student;

insert into student (first_name, last_name, email, age) values ('Alex','George','alex@gg.com',22);
insert into student (first_name, last_name, email, age) values ('Mihai','Muren','mihai@gg.com',24);
insert into student (first_name, last_name, email, age) values ('George','Drag','george@gg.com',22);
insert into student (first_name, last_name, email, age) values ('Lucian','Ion','lucian@gg.com',20);
insert into student (first_name, last_name, email, age) values ('Mircea','Avram','mircea@gg.com',21);
insert into student (first_name, last_name, email, age) values ('Georgian','Lujer','georgian@gg.com',26);

create table book(
	book_id integer auto_increment primary key,
    student_id integer,
    book_name text,
    created_at timestamp default now(),
	foreign key (student_id) references student(student_id)
);

insert into book (student_id, book_name, created_at) value (1,'Matematica','2022-01-12 00:00:00');
insert into book (student_id, book_name, created_at) value (3,'Istorie','2020-03-07 00:00:00');
insert into book (student_id, book_name, created_at) value (4,'Psihologie','2010-09-09 00:00:00');
insert into book (student_id, book_name, created_at) value (7,'Geografie','2005-01-05 00:00:00');
insert into book (student_id, book_name, created_at) value (6,'Informatica','2017-09-10 00:00:00');

create table student_id_card(
    card_id integer auto_increment primary key,
    student_id integer,
    card_number integer,
    foreign key (student_id) references student(student_id)
);

insert into student_id_card(student_id, card_number) value (1,345674);
insert into student_id_card(student_id, card_number) value (2,534543);
insert into student_id_card(student_id, card_number) value (3,123325);
insert into student_id_card(student_id, card_number) value (4,936284);
insert into student_id_card(student_id, card_number) value (5,210049);

create table course(
    course_id integer auto_increment primary key,
    course_name text,
    course_department text
);

insert into course(course_name, course_department) value ('Geometrie','Matematica');
insert into course(course_name, course_department) value ('Algebra','Matematica');
insert into course(course_name, course_department) value ('Crochiuri','Desen');
insert into course(course_name, course_department) value ('Pictura','Desen');
insert into course(course_name, course_department) value ('Istoria Romanie','Istorie');
insert into course(course_name, course_department) value ('Istoria Europei','Istorie');
insert into course(course_name, course_department) value ('Geografia Romaniei','Geografie');

create table enrolment(
    id integer auto_increment primary key,
    student_id integer,
    course_id integer,
    created_at timestamp,
    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(id)
);

insert into enrolment(student_id, course_id, created_at) value (1,1,'2021-09-15 12:03:45');
insert into enrolment(student_id, course_id, created_at) value (7,2,'2021-09-15 12:09:45');
insert into enrolment(student_id, course_id, created_at) value (5,4,'2021-09-15 12:15:45');
insert into enrolment(student_id, course_id, created_at) value (4,5,'2021-09-15 12:34:45');
insert into enrolment(student_id, course_id, created_at) value (3,2,'2021-09-15 12:55:45');
insert into enrolment(student_id, course_id, created_at) value (3,1,'2021-09-15 13:01:45');
insert into enrolment(student_id, course_id, created_at) value (2,4,'2021-09-15 13:08:45');