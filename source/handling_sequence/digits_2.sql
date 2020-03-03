-- create view of sequence from 0 to 999 
drop view if exists sequence;
create view sequence (seq) as 
    select 
        d1.digit::integer + (d2.digit::integer * 10) + (d3.digit::integer * 100)
    from 
        digits d1 
        cross join 
        digits d2 
        cross join 
        digits d3
    ;

-- 
-- 
-- get sequence from 1 to 100 from view above
select seq 
from sequence 
where seq between 1 and 100 
order by seq 
;