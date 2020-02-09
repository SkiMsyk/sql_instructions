select center
from Materials
group by center
having count(material) <> count(distinct material)
;