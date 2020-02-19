with d as (
    select 
        age_class
        ,sex_cd
        ,sum(case
            when pref_name in ('aomori', 'akita') then population
            else null
        end) as pop_tohoku
        ,sum(case 
            when pref_name in ('tokyo', 'chiba') then population
            else null 
        end) as pop_kanto
    from tblpop
    group by 
        age_class 
        ,sex_cd
)
-- 
-- 
,m as (
    select age_class, sex_cd
    from tblage cross join tblsex
)
-- 
-- 
select 
    m.age_class as age_class
    ,m.sex_cd as sex_cd
    ,d.pop_tohoku as pop_tohoku 
    ,d.pop_kanto as pop_kanto 
from 
    m 
    left outer join d 
    on m.age_class = d.age_class 
    and m.sex_cd = d.sex_cd 
order by 
    age_class
    ,sex_cd desc
;