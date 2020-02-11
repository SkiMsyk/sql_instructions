select 
    si.shop 
from 
    shopitems si 
    left outer join items i 
    on si.item = i.item 
group by 
    si.shop 
having 0 = 0
    and count(si.item) = (select count(item) from items)
    and count(i.item) = (select count(item) from items)
;