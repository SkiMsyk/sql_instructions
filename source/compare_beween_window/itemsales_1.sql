-- how many were sold in total for each product??
with total as (
    select 
        item_no
        ,sum(quantity) as total
    from 
        saleshistory
    group by 
        item_no
)
-- 
-- 
select 
    i.item
    ,t.total 
from 
    items i 
    left outer join total t
    on i.item_no = t.item_no 
;