select 
     case
        when count(*) = ( select count(*) from tbl_a) 
            and count(*) = (select count(*) from tbl_b)
        then 'equal'
        else 'not-equal'
    end as result 
from (
    select * 
    from tbl_a 
    union 
    select * 
    from tbl_b
) tmp 
;
