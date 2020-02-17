-- 前年とsaleの値が同じ年を抽出する
select year, sale 
from sales s1
where sale = (
    select sale 
    from sales s2 
    where s1.year = s2.year - 1
)
order by year 
;