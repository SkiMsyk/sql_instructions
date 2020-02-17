select
    year 
    ,sale as current_sale
    ,sum(sale) over(order by year range between 1 preceding and 1 preceding) as pre_sale
from sales 
;