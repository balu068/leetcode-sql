select distinct a.num as ConsecutiveNums
from logs a, logs b, logs c
where a.id = b.id+1 and a.num = b.num and a.id= c.id+2 and a.num=c.num