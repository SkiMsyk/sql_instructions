select 
    team_id
    ,member
from Teams T1
where 0 = 0
    and not exists (
        select * from Teams T2
        where 0 = 0
            and T1.team_id = T2.team_id
            and status <> 'ready'
    )
;