select class
from TestResults
group by class
having count(*) * 0.75 <= sum(case when score >= 80 then 1 else 0 end)
;