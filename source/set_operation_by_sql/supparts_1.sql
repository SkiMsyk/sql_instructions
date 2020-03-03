-- making combinations sppliers  
-- 数も種類も全く同じ部品を取り扱うサプライヤーのペアを求めたい
-- まずは業者の組み合わせを作る
select 
    sp1.sup as s1
    ,sp2.sup as s2 
from 
    supparts sp1
    ,supparts sp2 
where 0=0 
    and sp1.sup < sp2.sup
group by 
    sp1.sup
    ,sp2.sup 
order by 
    sp1.sup
    ,sp2.sup
;