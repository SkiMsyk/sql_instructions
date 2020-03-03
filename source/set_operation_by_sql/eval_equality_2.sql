-- diff within tables
( 
    select * from tbl_a 
    except 
    select * from tbl_c
)
union all 
(
    select * from tbl_c
    except 
    select * from tbl_a
)
;