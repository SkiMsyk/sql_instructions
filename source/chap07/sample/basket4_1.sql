select 
    *
from 
    shopitems si 
    left outer join items i 
    on si.item = i.item 
;