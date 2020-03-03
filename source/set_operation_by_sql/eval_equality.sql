with union_table as (
    select * 
    from tbl_a 
    union 
    select *
    from tbl_b
)
-- 
-- 
,intersect_table as (
    select * 
    from tbl_a 
    intersect 
    select * 
    from tbl_b 
)
-- 
-- 

select 
    case 
        when count(*) = 0 then 'equal'
        else 'not equal' 
    end as result 
from (
    (select * from union_table)
    except 
    (select * from intersect_table)
) v
;
