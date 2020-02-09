-- select classes that score >= 50 and male counts > female counts.
select class
from TestResults
where score >= 50
group by class
having sum(case sex when 'male' then 1 else 0 end) > sum(case sex when 'female' then 1 else 0 end)
;