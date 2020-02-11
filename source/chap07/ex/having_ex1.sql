select
    case
        when count(*) = 0 then 'this is empty table'
        when count(*) <> max(seq) - min(seq) + 1 then 'not consecutive'
        else 'consecutive'
    end as gap 
-- from SeqTbl 
-- from SeqTable_case1
-- from SeqTable_case2
-- from SeqTable_case3
from SeqTable_case4
;