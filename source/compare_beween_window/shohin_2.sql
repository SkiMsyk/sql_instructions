select 
    shohin_mei
    ,shohin_bunrui
    ,hanbai_tanka
from (
    select 
        shohin_mei
        ,shohin_bunrui
        ,hanbai_tanka
        ,avg(hanbai_tanka) over(
            partition by shohin_bunrui
        ) as avg_tanka
    from
        shohin
) s
where 0=0
    and hanbai_tanka > avg_tanka
;
