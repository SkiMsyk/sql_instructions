select
    prc_date
    ,a1.prc_amt
    ,(
        select avg(prc_amt)
        from accounts a2
        where a1.prc_date >= a2.prc_date 
            and (
                select count(*)
                from accounts a3 
                where a3.prc_date between a2.prc_date and a1.prc_date
            ) <= 3
    ) as mvg_sum
from accounts a1
order by prc_date 
;