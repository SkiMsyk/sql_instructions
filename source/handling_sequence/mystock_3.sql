select 
    min(deal_date) as start_date 
    ,max(deal_date) as end_date 
from (
    select 
        m1.deal_date
        ,count(m2.row_num) - min(m1.row_num) as gap 
    from 
        mystockupseq m1 
        inner join 
        mystockupseq m2 
        on m2.row_num <= m1.row_num 
    group by 
        m1.deal_date
) tbl 
group by 
    gap 
order by 
    start_date
;