with next_reservations as (
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
)
-- 
-- output query
select 
    reserver,
    next_reserver 
from 
    next_reservations
where 
    next_start_date between start_date and end_date 
;