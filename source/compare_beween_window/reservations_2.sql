select 
    reserver 
    ,next_reserver
from (
    select
        reserver
        ,start_date
        ,end_date 
        ,max(start_date) over(
            order by start_date 
            rows between 1 following and 1 following
        ) as next_start_date 
        ,max(reserver) over(
            order by start_date 
            rows between 1 following and 1 following
        ) as next_reserver 
    from 
        reservations
) r 
where 0=0
    and next_start_date between start_date and end_date
;