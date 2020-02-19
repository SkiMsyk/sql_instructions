select
    c0.name 
    ,(
        select 'o'
        from courses c1
        where course = 'sql-l1'
            and c1.name = c0.name
    ) as sql_l1
    ,(
        select 'o'
        from courses c2 
        where course = 'unix-l1'
            and c2.name = c0.name
    ) as unix_l1
    ,(
        select 'o'
        from courses c3
        where course = 'java-l2'
            and c3.name = c0.name 
    ) as java_l2
from (
    select distinct name from courses
) c0
;