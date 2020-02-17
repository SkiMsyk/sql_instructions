-- with window function 
with summary as (
    select 
        year 
        ,sale as current_sale 
        ,sum(sale) over(order by year range between 1 preceding and 1 preceding) as pre_sale
    from
        sales
)
-- 
-- 
select 
    year 
    ,current_sale as sale 
    ,case 
        when current_sale = pre_sale then 'unchanged'
        when current_sale > pre_sale then 'increase'
        when current_sale < pre_sale then 'decrease'
        else '-'
    end as var 
from summary 
order by 
year;