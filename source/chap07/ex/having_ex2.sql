-- from students table
-- 全員が9月中に提出済みの学部を選択するクエリ
-- answer: finance only
select 
    dpt
from students s1
group by dpt
having 0=0
    and count(*) = sum(case when sbmt_date between '2018-09-01' and '2018-09-30' then 1 else 0 end)
;