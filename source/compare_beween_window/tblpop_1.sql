select 
    m1.age_class as age_class 
    ,m2.sex_cd as sex_cd
    ,d.pop_tohoku as pop_tohoku 
    ,d.pop_kanto as pop_kanto 
from (
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
) d
right outer join tblage m1
    on m1.age_class = d.age_class 
right outer join tblsex m2
    on m2.sex_cd = d.sex_cd
order by 
    age_class
;