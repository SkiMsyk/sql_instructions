with accounts_added_cnt as (
    select 
        prc_date
        ,prc_amt
        ,count(*) over(
            order by prc_date 
            rows between 2 preceding and current row
        ) as cnt 
    from accounts
)
-- 
-- 
select 
    prc_date
    ,prc_amt
    ,case 
        when cnt < 3 then null 
        else avg(prc_amt) over(
            order by prc_date
            rows between 2 preceding and current row
        )
    end as mvg_avg
from accounts_added_cnt
;