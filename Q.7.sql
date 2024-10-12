-- Determine the distribution of orders by hour of the day.

select hour(orders.order_time) as time, count(order_details.quantity) as total_quantity from orders join order_details
on orders.order_id = order_details.order_id
group by hour(orders.order_time)
order by count(order_details.quantity);