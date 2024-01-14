create  table regions(id serial primary key ,region_mame varchar);
insert into regions(region_mame) values ('Kadamjay');

create table countries(country_id serial primary key , country_name varchar, region_id int references regions(id));
insert into countries(country_name, region_id) values ('Kyrgyzstan',1);

create table locations(id serial primary key , street_address varchar,country_id int references countries(country_id));
insert into locations(street_address, country_id) values  ('Tynalieva 29',1);

create table universities(id serial primary key ,university_name varchar, location_id int references locations(location_id));
insert into universities(university_name, location_id) values ('Kyrgyz-Turkish Manas university',1);


create table faculties(id serial primary key , faculty_name varchar unique, faculty_code varchar unique , university_id int references universities(id));
insert into faculties(faculty_name,faculty_code,university_id) values ('Natural scien','**12.*****',1);

create table lessons(id serial primary key , lesson_name varchar, faculty_code varchar references faculties(faculty_code));
insert into lessons(lesson_name, faculty_code) values ('Programmlama dilleri','**12.*****');

create table students(student_id serial primary key , student_name varchar , faculty_id int references faculties(id),email varchar unique );
insert into students(student_name, faculty_id, email) values ('Gulumkan',1,'2112.01001@gmail.com');

create table jobs(job_id serial primary key , job_title varchar);
insert into jobs(job_title) values ('Teacher');

create table departments(department_id serial primary key , department_name varchar unique );
insert into departments(department_name) values ('rectorate');

create table employees(employee_id serial primary key , name varchar, email varchar unique ,bank_account varchar unique , department_id int references departments(department_id));
insert into employees(name, email, bank_account, department_id) values ('Zarina','2012.03003@gmail.com','1234 3212 4565',1);

