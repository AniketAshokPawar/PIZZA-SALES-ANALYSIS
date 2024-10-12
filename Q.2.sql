-- Calculate the total revenue generated from pizza sales.

select round(sum(pizzas.price * order_details.quantity),2) as total_sales from pizzas join order_details 
on pizzas.pizza_id = order_details.pizza_id;
