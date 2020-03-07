select
    a.id 
    ,a.name 
from 
    class_a a 
    inner join class_b b 
    on a.id = b.id 
;