select 
    d1.digit::integer + (d2.digit::integer * 10) as seq 
from 
    digits d1 
    cross join 
    digits d2 
order by 
    seq 
;