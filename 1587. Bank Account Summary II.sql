select users.name, sum(transactions.amount) balance
from transactions
left join users
on users.account = transactions.account
group by transactions.account
having sum(amount)>10000
