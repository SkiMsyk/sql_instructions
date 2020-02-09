select team_id
from Teams
group by team_id
having count(*) = sum(case when status = 'ready' then 1 else 0 end)
;