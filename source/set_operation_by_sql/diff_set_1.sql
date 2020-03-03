with v as (
select emp, count(*) as skill_count
from empskills e
where 0=0 
    and exists (
        select skill 
        from skills s
        where e.skill = s.skill
    )
group by emp
)
-- 
-- 
select emp
from v 
where skill_count = (select count(*) from skills)
;