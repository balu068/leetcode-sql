select score, dense_rank() over(order by score desc) 'rank'
from scores
order by score desc