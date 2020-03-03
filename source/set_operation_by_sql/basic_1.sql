select 
    count(*) as row_cnt 
from (
    select * 
    from tbl_a
    union 
    select *
    from tbl_b 
) m 
;