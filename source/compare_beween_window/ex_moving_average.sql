-- calculate moving average including 2 preciding and current row.
select 
    prc_date
    ,avg(prc_amt) over(
        order by prc_date
        rows between 2 preceding and current row
    ) as avg_amt
from accounts
order by prc_date
;