# Installation
brew services start postgresql
`psql postgres`

# Tutorial
https://www.youtube.com/watch?v=qw--VYLpxG4
3:06

`help`  
`\q` to quit  
`create database test;`  
`\c` to connect to different database  
`\d` describes tables (`\d name` describes table)  
`create table name ( name type constraints, name....);`  
`insert into tablename (fieldname, fieldname) values (value, value);`  
mockaroo.com  
`select col, col from name order by col asc`  
`select distinct col ...`  
`where name = value and ...` `or`  
comparisons: select 1 = 1;  
`limit 10` `offset 10` 
Legacy way: `fetch first 10 row only`  
`select * from person where country_of_birth in ('a', 'b', ...);`  
`where date_of_birth between date '' and '';`  
`where email like '*.com';` (underscore for single char)  
ilike is case insensitive  
`select colname, count(*) from person group by colname having COUNT(*) > 5`  
`select make, model, min(price) from car group by make, model;`  
`max`, `min`, `avg`, `sum`  
`round()`  
`select id as identity ...`  
coalesce =~ default  
`select coalesce(email, 'no email provided') from person`  
`nullif(x, 0)` to avoid division by zero  

## Dates
`now()`, `now()::date`, `now()::time`  
`now() - interval '10 years'`  
`extract(year from now())`  
`age(now(), date)`  

## Primary keys
Connected with indexes  
`alter table person drop constraint person_pkey;`  
`alter table person add primary key (id);`  
`delete from mperson where id = 1;`  

Dupes / uniqueness
`select count(*) from person group by email having count(*) > 1`  
`alter table person add constraint unique_email_address unique (email);`  
or just `alter table person add unique (email}`  
`alter table person add constraint gender_constraint check (gender = 'Female' or gender = 'male');`  

## Modifying
Make sure to include a where-clause lol  
`delete from person` deletes all  
`delete from person where id = x`  
`update person set email = '' where id = '';`  
`... on conflict (id) do nothing` (only for constrained stuff)  
Upsert: `on conflict do update set email = excluded.email, first_name = ...`  
(overwrite with what was about to be put)  

## Foreign keys and joins
Person and car - one to one  
In spec: `car_id BIGINT references car (id) UNIQUE(car_id)`  

## Inner join
Gives the intersection  
`select * from person join car on person.car_id = car.id;`  
`select person.email, car.make from...`  
(\x turns on extended view)  

## Left join
A + intersection  
`... left join ...`  
`.. where car.* is null;`  

## Deletion with keys
Delete the user or the user's car_id before deleting the car  
Cascade fixes this, but is risky  

## Generating csv
`\copy (select * from person) to '~/Downloads/stuff.csv' delimiter ',' csv header;`  

## serial datatypes and sequence
`select * from person_id_seq;`  
`alter sequence person_id_seq restart with 10;`  

## uuid's
Globally unique, good for migration between databases  
`create extension if not exists "uuid-ossp";`  
`select uuid_generate_v4();`  
security through obscurity  
in create table, make `person_uid uuid not null primary key,`  
then include `person_uid` and insert `uuid_generate_v4()`  

