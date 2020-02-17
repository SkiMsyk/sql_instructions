-- 直近のデータとの差分を取る
select 
    year 
    ,sale 
from sales2 s1
where sale = (
    select sale 
    from sales2 s2
    -- s2.year = s1.yearよりも小さくかつその中でもっとも大きいyear である行が選択される
    -- 
    where s2.year = (
        -- yearの値が自分よりも小さいかつその中でもっとも大きい値
        select max(year) from sales2 s3 where s1.year > s3.year
    )
)
order by year;