select 
    distinct emp 
from empskills e1
where 0=0
    and not exists (
        select skill 
        from skills 
        except 
        select skill 
        from empskills e2 
        where e1.emp = e2.emp
    )
;
-- 
-- 方針
-- skills.skillから各個人のskillを除いた集合が空集合かどうかを判定する．