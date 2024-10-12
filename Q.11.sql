-- Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.name,
round((round(sum(pizzas.price*order_details.quantity),1)/ 
(select round(sum(pizzas.price*order_details.quantity),1) as total_revenue from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id )),2)*100 as revenue_perct from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id 
join pizza_types on pizzas.pizza_type_id = pizza_types.pizza_type_id
 
group by pizza_types.name
order by revenue_perct desc;

