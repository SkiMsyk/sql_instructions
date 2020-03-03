select 
    distinct emp 
from 
    empskills es1 
where 0=0
    and not exists (
        select skill 
        from skills 
        except 
        select skill 
        from empskills es2 
        where es1.emp = es2.emp 
    )
    and not exists (
        select skill 
        from empskills es3 
        where es1.emp = es3.emp 
        except 
        select skill 
        from skills
    )
;