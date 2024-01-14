Last login: Mon Jan 15 03:39:51 on ttys000
hacker@MacBook-ProGulumkan ~ % /Library/PostgreSQL/16/scripts/runpsql.sh; exit
Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (16.1)
Type "help" for help.

postgres=# create table hospitals(id serial primary key, hospital_name varchar,location_id int references locations(location_id));
CREATE TABLE

    postgres=# insert into hospitals(hospital_name,location_id) values ('NSR', 1);
INSERT 0 1

postgres=# create table doctors(id serial primary key, doctor_name varchar,department_id int references departments(department_id));
CREATE TABLE
    postgres=# insert into doctors(doctor_name , department_id) values ('Gulumkan',1);
INSERT 0 1
postgres=#