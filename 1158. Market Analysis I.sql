select u.user_id as buyer_id, u.join_date, ifnull(c.orders_in_2019,0) orders_in_2019
from users u
left join
    (select count(order_date) orders_in_2019, buyer_id
    from orders o
    where order_date > "2019-00-00"
    and order_date <"2020-00-00"
    group by buyer_id) as c
on c.buyer_id = u.user_id
