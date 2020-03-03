select 
    emp 
from 
    empskills es1
where not exists (
    select skill 
    from skills 
    except 
    select skill 
    from empskills es2 
    where es1.emp = es2.emp
)
group by emp 
having
    count(*) = (select count(*) from skills)
;