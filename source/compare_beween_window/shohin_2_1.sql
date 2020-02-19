with avg_tbl as (
    select 
        shohin_mei
        ,shohin_bunrui
        ,hanbai_tanka
        ,avg(hanbai_tanka) over(
            partition by shohin_bunrui
        ) avg_tanka
    from
        shohin
)
-- 
-- 
select 
    shohin_mei 
    ,shohin_bunrui
    ,hanbai_tanka
from avg_tbl 
where hanbai_tanka > avg_tanka 
;