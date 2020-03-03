drop view if exists sequence;
drop table if exists digits;
create table digits (digit int8);
\copy digits from digits.csv with csv header
-- 
-- 
drop table if exists seqtbl;
create table seqtbl (seq int8);
\copy seqtbl from seqtbl.csv with csv header
-- 
-- 
drop table if exists seats;
create table seats (seat int8, status varchar);
\copy seats from seats.csv with csv header
-- 
-- 
drop table if exists seats2;
create table seats2 (seat int8, line_id varchar, status varchar);
\copy seats2 from seats2.csv with csv header
-- 
-- 
drop table if exists mystock;
create table mystock (deal_date varchar, price int8);
\copy mystock from mystock.csv with csv header
