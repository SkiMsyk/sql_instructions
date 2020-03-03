with master_tbl as (
    select
        age_class
        ,sex_cd 
    from 
        tblage 
        cross join 
        tblsex
)
-- 
-- 
select 
    m.age_class as age_class 
    ,m.sex_cd as sex_cd 
    ,sum(case
        when pref_name in ('aomori', 'akita') then population 
        else null 
    end) as pop_tohoku
    ,sum(case 
        when pref_name in ('tokyo', 'chilba') then population 
        else null 
    end) as pop_kanto 
from 
    tblpop d
    right outer join 
    master_tbl m 
    on m.age_class = d.age_class 
    and m.sex_cd = d.sex_cd
group by 
    m.age_class 
    ,m.sex_cd
;