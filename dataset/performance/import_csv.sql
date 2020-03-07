drop table if exists class_a;
create table class_a (id int8, name varchar);
\copy class_a from class_a.csv with csv header 
-- 
-- 
drop table if exists class_b;
create table class_b (id int8, name varchar);
\copy class_b from class_b.csv with csv header 
-- 
-- 
drop table if exists items;
create table items (item_no int8, item varchar);
\copy items from items.csv with csv header 
-- 
-- 
drop table if exists saleshistory;
create table saleshistory (sale_date varchar, item_no int8, quantity int8);
\copy saleshistory from saleshistory.csv with csv header 
-- 
-- 
