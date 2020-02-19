select 
    max(i.item)
    ,sum(s.quantity) as total 
from 
    items i 
    left outer join saleshistory s 
    on i.item_no = s.item_no 
group by 
    i.item_no 
order by 
    i.item_no
;