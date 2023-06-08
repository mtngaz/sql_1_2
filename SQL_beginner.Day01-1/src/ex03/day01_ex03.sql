SELECT order_date AS action_date, person_id
FROM person_order
INTERSECT
SELECT visit_date, person_id
FROM person_visits,
     person
ORDER BY action_date ASC, person_id DESC;
