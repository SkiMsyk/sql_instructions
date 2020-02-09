select 
    team_id
    ,case 
        when max(status) = 'ready' and min(status) = 'ready' then 'ready'
        else 'not ready' 
    end as status 
from Teams
group by team_id
;