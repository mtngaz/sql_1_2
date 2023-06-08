SELECT pv.order_date, CONCAT(person.name, ' (age: ', person.age, ')') person_information
FROM person_order AS pv(primary_key, id, menu_id, order_date)
         NATURAL JOIN person
ORDER BY order_date, name;