select
    si.shop
    ,count(si.item)
    ,count(i.item)
from shopitems si 
    inner join items i 
    on si.item = i.item 
group by si.shop
;