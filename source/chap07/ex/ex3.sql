-- select classes that satisfy the conditions of "average score in female is greater than average score in male".
select class
from TestResults
group by class
having avg(case sex when 'female' then score else null end) > avg(case sex when 'male' then score else null end)
;
