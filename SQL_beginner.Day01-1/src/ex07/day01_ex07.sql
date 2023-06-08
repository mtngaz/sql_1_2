SELECT person_order.order_date, CONCAT(person.name, ' (age: ', person.age, ')')
FROM person_order
         INNER JOIN person ON person_order.person_id = person.id
ORDER BY order_date, name;