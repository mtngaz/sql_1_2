SELECT menu.pizza_name, p.name AS pizzeria_name, menu.price
FROM menu
    FULL JOIN pizzeria p on menu.pizzeria_id = p.id
WHERE menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza'
ORDER BY menu.pizza_name, p.name