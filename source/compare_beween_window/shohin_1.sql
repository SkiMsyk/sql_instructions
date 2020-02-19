select 
    shohin_bunrui
    ,shohin_mei
    ,hanbai_tanka
from 
    shohin s1
where 0=0
    and hanbai_tanka > (
        select avg(hanbai_tanka)
        from shohin s2
        where s1.shohin_bunrui = s2.shohin_bunrui
        group by shohin_bunrui
    );