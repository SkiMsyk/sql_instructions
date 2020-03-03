select 
    a.id as id 
    ,a.name
    ,b.name 
from 
    class_a a 
    left outer join 
    class_b b 
    on a.id = b.id 
    union 
    select 
        b.id as id 
        ,a.name 
        ,b.name 
    from 
        class_a a 
        right outer join 
        class_b b 
        on a.id = b.id 
order by id
;