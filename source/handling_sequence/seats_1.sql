select 
     s1.seat as start_seat 
    ,s2.seat as end_seat 
from 
     seats s1
    ,seats s2
where 0=0
    and s2.seat = s1.seat + (3 - 1)
    and not exists (
        select * 
        from seats s3 
        where 0=0
            and s3.seat between s1.seat and s2.seat
            and s3.status <> 'o'
    );