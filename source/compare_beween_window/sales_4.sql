-- 成長，後退，現状維持を一度に求める
select 
    year 
    ,current_sale as sale 
    ,case 
        when current_sale = pre_sale then 'unchanged'
        when current_sale > pre_sale then 'increase'
        when current_sale < pre_sale then 'decrease'
        else '-'
    end as var 
from (
    select 
        year 
        ,sale as current_sale
        ,(select sale from sales s2 where s2.year = s1.year - 1) as pre_sale
    from sales s1
) as tmp 
order by year 
;