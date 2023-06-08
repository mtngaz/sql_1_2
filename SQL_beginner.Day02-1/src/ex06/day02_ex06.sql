SELECT menu.pizza_name, p.name AS pizzeria_name
FROM menu
    JOIN person_order po on menu.id = po.menu_id
    JOIN pizzeria p on menu.pizzeria_id = p.id
WHERE po.person_id = 4 OR po.person_id = 1
ORDER BY menu.pizza_name, pizzeria_name