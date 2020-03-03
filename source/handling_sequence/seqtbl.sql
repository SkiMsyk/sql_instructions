select 
    s.seq 
from 
    sequence s
where 0=0 
    and s.seq between 1 and 12 
    and s.seq not in (select v.seq from seqtbl v )
;
