-- Group the orders by date and calculate the number of pizzas ordered on same day.

select orders.order_date, count(order_details.quantity) from orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date;
