-- with window function
select year, current_sale 
from (
    select
        year 
        ,sale as current_sale 
        ,sum(sale) over(order by year range between 1 preceding and 1 preceding) as pre_sale
    from sales
) as tmp 
where current_sale = pre_sale 
order by year 
;