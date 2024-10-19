# Домашнее задание к занятию «SQL. Часть 2»

## Задание 1

Одним запросом получите информацию о магазине, в котором обслуживается более 300 покупателей, и выведите в результат следующую информацию:

* фамилия и имя сотрудника из этого магазина;
* город нахождения магазина;
* количество пользователей, закреплённых в этом магазине.

### Решение

```
SELECT CONCAT(staff.first_name, ' ', staff.last_name) AS employee_name, city.city AS store_city,
COUNT(customer.customer_id) AS customer_count FROM store JOIN staff ON store.manager_staff_id = staff.staff_id JOIN address ON store.address_id = address.address_id
JOIN city ON address.city_id = city.city_id JOIN customer ON store.store_id = customer.store_id GROUP BY store.store_id HAVING customer_count > 300;
```

![Задание 1](task_1.png)

## Задание 2

Получите количество фильмов, продолжительность которых больше средней продолжительности всех фильмов.

### Решение

```
SELECT COUNT(*) AS film_count FROM film WHERE length > (SELECT AVG(length) FROM film);
```

![Задание 2](task_2.png)

## Задание 3

Получите информацию, за какой месяц была получена наибольшая сумма платежей, и добавьте информацию по количеству аренд за этот месяц.

### Решение

```
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS payment_month, COUNT(rental_id) AS rental_count, SUM(amount) AS total_amount FROM payment GROUP BY payment_month ORDER BY total_amount DESC LIMIT 1;
```

![Задание 3](task_3.png)
