select 
     sp1.sup as s1
    ,sp2.sup as s2
from 
     supparts sp1
    ,supparts sp2
where 0=0
    and sp1.sup < sp2.sup 
    and sp1.part = sp2.part
group by 
     sp1.sup
    ,sp2.sup
having 0=0
    and count(*) = (
        select count(*)
        from supparts sp3
        where sp3.sup = sp1.sup
    )
    and count(*) = (
        select count(*)
        from supparts sp4 
        where sp4.sup = sp2.sup
    );