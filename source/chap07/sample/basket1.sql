-- search shops that have beer, paper-diapers and bycycle
select
    distinct shop
from ShopItems
where item in (
    select item
    from Items
)
;