select 
    reserver 
    ,start_date 
    ,end_date 
from reservations r1
where 0=0
    and exists (
        select *
        from reservations r2 
        where r1.reserver <> r2.reserver 
            and (
                r1.start_date between r2.start_date and r2.end_date
                or r1.end_date between r2.start_date and r2.end_date
            )
    )
;