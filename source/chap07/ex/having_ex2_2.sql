select 
    dpt
    ,extract(year, sbmt_date)
from students
-- group by dpt
-- having 0=0
--     and count(*) = sum(case 
--             when extract(year from sbmt_date) = '2018'
--                 and extract(month from sbmt_date) = '09'
--             then 1 
--             else 0 
--         end)
;