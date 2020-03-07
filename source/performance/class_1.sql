select *
from class_a 
where 0=0
    and id in (
        select id 
        from class_b
    )
;