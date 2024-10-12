-- List the top 5 most ordered pizza types along with their quantities.

select pizzas.pizza_type_id as pizza_type, count(order_details.pizza_id) as total_Quantity from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizzas.pizza_type_id
order by count(pizzas.pizza_type_id) desc
limit 5;