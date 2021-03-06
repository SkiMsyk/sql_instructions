select 
    seat 
    ,seat + (3-1)
from (
    select
        seat 
        ,max(seat) over(
            partition by line_id 
            order by seat 
            rows between (3-1) following and (3-1) following
        ) as end_seat 
    from 
        seats2 
    where 0=0 
        and status = 'o'
) tbl 
where 0=0
    and end_seat - seat = (3-1)
;