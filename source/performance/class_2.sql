select * 
from class_a a 
where 0=0
    and exists (
        select * 
        from class_b b 
        where a.id = b.id 
    )
;