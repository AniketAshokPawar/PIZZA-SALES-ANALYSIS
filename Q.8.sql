-- Join relevant tables to find the category-wise distribution of pizzas.

select pizza_types.category, count(order_details.quantity) from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details 
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category;
