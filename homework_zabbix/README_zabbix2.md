# Домашнее задание к занятию «Система мониторинга Zabbix. Часть 2»
## Задание 1

Сначала создадим новый шаблон

![Создаем шаблон](1_template_main.png)

Добавим items

* Создайте Item который будет собирать информацию об загрузке CPU в процентах
** Используем system.cpu.util[<cpu>,<тип>,<режим>]
*** по умолчанию используются все cpu. Так и оставим
*** в типе укажем user
*** выберем avg5, то есть усреднение за 5 минут
* Создайте Item который будет собирать информацию об загрузке RAM в процентах
** Используем vm.memory.size[<режим>]
*** Укажем режим pavailable, то есть "доступно, в процентах"

![Добавляем items](1_template_items.png)

## Задание 2

Сначала создадим два хоста knyshenko-1 и knyshenko-2

Прикрепим к ним шаблон

![Прикрепляем шаблон](2_link_template_linux.png)

Убедимся, что данные собираются

![Хост 1](2_link_template_linux_data_host_1.png)

![Хост 2](2_link_template_linux_data_host_2.png)

## Задание 3

Прикрепим шаблон, созданный в задании 1.

![Свой шаблон](3_hosts_templates.png)

Убедимся, что данные по нашему собственному шаблону собираются

![Свой шаблон данные](3_hosts_latest_data.png)

## Задание 4

Создадим дашборд на основе нашего шаблона

![Свой дашборд](4_dashbord.png)

