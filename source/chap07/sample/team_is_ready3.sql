select team_id
from Teams
group by team_id
having 0 = 0
    and max(status) = 'ready'
    and min(status) = 'ready'
;
