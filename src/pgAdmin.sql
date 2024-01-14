create table banks(id serial primary key, name varchar,location_id int references locations(location_id));
insert into banks(name,location_id) values ('Demir bank',1);

create table bank_departments(id serial primary key, department_name varchar,bank_id int references banks(id));
insert into bank_departments(department_name,bank_id) values ('Credit',1);

create table restaurants(id serial primary key, restaurant_name varchar, location_id int references locations(location_id));
insert into restaurants(restaurant_name,location_id) values ('Uluu - Too',1);

create table menu(id  serial primary key,name varchar , restaurant_id int references restaurants(id));
insert into menu(name,restaurant_id) values ('Besh barmak',1);