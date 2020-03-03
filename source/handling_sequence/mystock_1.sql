select 
    deal_date
    ,price 
    ,case sign(price - max(price) over(
        order by deal_date 
        rows between 1 preceding and 1 preceding
    ))
        when 1 then '/'
        when 0 then '-'
        when -1 then '\' else null
    end as diff 
from 
    mystock
;
    