select
    si.shop
from
    shopitems si
    inner join items i
    on si.item = i.item
group by si.shop
having count(si.item) = (select count(item) from items)
;