select 
    i.item_no 
from 
    items i 
    inner join 
    saleshistory s 
    on i.item_no = s.item_no 
;