select 
    a.id as id 
    ,a.name as a_name 
from 
    class_a a 
    left outer join 
    class_b b 
    on a.id = b.id 
where b.name is null;