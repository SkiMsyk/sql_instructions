-- 
-- 
drop table if exists sales;
create table sales
(
    year int8,
    sale real
);
\copy sales from Sales.csv with csv header
-- 
-- 
drop table if exists sales2;
create table sales2
(
    year int8,
    sale real
);
\copy sales2 from Sales2.csv with csv header
-- 
-- 
drop table if exists shohin;
create table shohin
(
    shohin_id VARCHAR,
    shohin_mei VARCHAR,
    shohin_bunrui VARCHAR,
    hanbai_tanka real
);
\copy shohin from Shohin.csv with csv header
-- 
-- 
drop table if exists reservations;
create table reservations
(
    reserver VARCHAR,
    start_date DATE,
    end_date DATE
);
\copy reservations from Reservations.csv with csv header
-- 
-- 
drop table if exists reservations2;
create table reservations2
(
    reserver VARCHAR,
    start_date DATE,
    end_date DATE
);
\copy reservations2 from Reservations2.csv with csv header
-- 
-- 
drop table if exists courses;
create table courses
(
    name VARCHAR,
    course VARCHAR
);
\copy courses from Courses.csv with csv header
-- 
-- 
drop table if exists personnel;
create table personnel
(
    employee VARCHAR,
    child_1 VARCHAR,
    child_2 VARCHAR,
    child_3 VARCHAR

);
\copy personnel from Personnel.csv with csv header
-- 
-- 
drop table if exists children;
create table children 
(
    child VARCHAR
);
\copy children from Children.csv with csv header
-- 
-- 
drop table if exists tblpop;
create table tblpop 
(
    pref_name VARCHAR,
    age_class int8,
    sex_cd VARCHAR,
    population real
);
\copy tblpop from TblPop.csv with csv header
-- 
-- 
drop table if exists items;
create table items
(
    item_no int8,
    item VARCHAR
);
\copy items from Items.csv with csv header
-- 
--
drop table if exists tblage;
create table tblage
(
    age_class int8,
    age_range VARCHAR
);
\copy tblage from TblAge.csv with csv header
-- 
-- 
drop table if exists tblsex;
create table tblsex
(
    sex_cd VARCHAR,
    sex VARCHAR
);
\copy tblsex from TblSex.csv with csv header
-- 
-- 
drop table if exists saleshistory ;
create table saleshistory
(
    sale_date DATE,
    item_no real,
    quantity int8
);
\copy saleshistory from SalesHistory.csv with csv header
-- 
-- 
drop table if exists class_a;
create table class_a
(
    id int8,
    name VARCHAR
);
\copy class_a from Class_A.csv with csv header
-- 
-- 
drop table if exists class_b;
create table class_b
(
    id int8,
    name VARCHAR
);
\copy class_b from Class_B.csv with csv header
-- 
-- 
drop table if exists class_b_ex;
create table class_b_ex (id int8, name VARCHAR);
\copy class_b_ex from Class_B_ex.csv with csv header
-- 
-- 
drop table if exists accounts;
create table accounts 
(
    prc_date date,
    prc_amt real
);
\copy accounts from Accounts.csv with csv header
-- 
-- 
