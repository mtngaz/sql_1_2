SELECT name
FROM (SELECT *
      FROM menu
      WHERE pizza_name = 'pepperoni pizza'
            OR pizza_name = 'mushroom pizza') AS mushroom
         INNER JOIN person_order ON mushroom.id = person_order.menu_id
         INNER JOIN person ON person_order.person_id = person.id
WHERE gender = 'male'
    AND address = 'Moscow'
    OR address = 'Samara'
ORDER BY name DESC;