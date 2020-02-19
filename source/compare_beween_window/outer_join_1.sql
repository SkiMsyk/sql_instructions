select
    c0.name 
    ,case when c1.name is not null then 'o' else null end as sql_l1
    ,case when c2.name is not null then 'o' else null end as unix_l1
    ,case when c3.name is not null then 'o' else null end as java_l2
from (
    select distinct name from courses
) c0 
left outer join (
    select name from courses where course = 'sql-l1'
) c1
on c0.name = c1.name 
left outer join (
    select name from courses where course = 'unix-l1'
) c2
on c0.name = c2.name 
left outer join (
    select name from courses where course = 'java-l2'
) c3
on c0.name = c3.name 
;