select
    center
    ,case
        when count(material) <> count(distinct material) then 'duplicated'
        else 'no-problem'
    end as status
from Materials
group by center
;