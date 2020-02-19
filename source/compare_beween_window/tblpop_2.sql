with d as (
    select 
        age_class 
        ,sex_cd 
        ,sum( case 
            when pref_name in ('aomori', 'akita') then population
            else null 
        end) as pop_tohoku
        ,sum(case 
            when pref_name in ('tokyo', 'chiba') then population 
            else null 
        end) as pop_kanto 
    from 
        tblpop
    group by 
        age_class 
        ,sex_cd

)
-- 
-- 
select 
    m1.age_class as age_class 
    ,d.sex_cd as sex_cd
    ,d.pop_tohoku as pop_tohoku 
    ,d.pop_kanto as pop_kanto 
from d
right outer join tblage m1
    on m1.age_class = d.age_class 
order by 
    age_class
;