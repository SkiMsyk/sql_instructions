select 
    sale 
from sales2 s2 
where s2.year = (
        -- yearの値が自分よりも小さいかつその中でもっとも大きい値
        select max(year) from sales2 s3 where s2.year > s3.year
);