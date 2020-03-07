select item_no 
  from items i 
 where 0=0 
    and exists (
        select * 
          from saleshistory s 
         where i.item_no = s.item_no 
    )
;