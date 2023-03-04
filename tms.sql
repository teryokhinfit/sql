create SCHEMA tms;

drop schema tms;

create table tms.persons
(
    name           varchar(255) not null,
    surname        varchar(255) not null,
    age            int check (age > 0), check (age < 100),
    phone_number   varchar(255) not null default 'Не указан',
    city_of_living varchar(255) not null default 'Не указан',
    PRIMARY KEY (name, surname, age)
);

insert into tms.persons (name, surname, age, phone_number, city_of_living)
values ('Kolya', 'Tolstiy', 34, '555-555', 'Ryazan');

insert into tms.persons (name, surname, age, phone_number, city_of_living)
values ('Dima', 'Potniy', 48, '444-444', 'MOSCOW');

insert into tms.persons (name, surname, age, phone_number, city_of_living)
values ('Vasya', 'Pupkin', 56, '333-333', 'Samara');

insert into tms.persons (name, surname, age, phone_number, city_of_living)
values ('Sveta', 'Sladkaya', 15, '222-222', 'SPB');