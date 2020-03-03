select 
    s1.seat as start_seat
    ,s2.seat as end_seat
from 
    seats2 s1
    ,seats2 s2 
where 0=0
    and s1.seat = s2.seat - (3-1)
    and not exists (
        select * 
        from seats2 s3 
        where 0=0
            and s3.seat between s1.seat and s2.seat 
            and (s3.status <> 'o' or s3.line_id <> s1.line_id)
    )
;