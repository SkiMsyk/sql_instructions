drop table if exists tbl_a;
create table tbl_a (key varchar, col_1 int8, col_2 int8, col_3 int8);
\copy tbl_a from tbl_a.csv with csv header 
-- 
-- 
drop table if exists tbl_b;
create table tbl_b (key varchar, col_1 int8, col_2 int8, col_3 int8);
\copy tbl_b from tbl_b.csv with csv header 
-- 
-- 
drop table if exists tbl_c;
create table tbl_c (key varchar, col_1 int8, col_2 int8, col_3 int8);
\copy tbl_c from tbl_c.csv with csv header 
-- 
-- 
drop table if exists skills;
create table skills (skill varchar);
\copy skills from skills.csv with csv header
-- 
-- 
drop table if exists empskills;
create table empskills (emp varchar, skill varchar);
\copy empskills from empskills.csv with csv header
-- 
-- 
drop table if exists supparts;
create table supparts (sup varchar, part varchar);
\copy supparts from supparts.csv with csv header
-- 
-- 
drop table if exists products;
create table products (name varchar, price int8);
\copy products from products.csv with csv header
