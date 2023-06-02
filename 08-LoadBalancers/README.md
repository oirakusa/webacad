## Load balancers

### Завдання 1
1. Сконфігурувати для HAProxy TLS (https) frontend.
2. Сконфігурувати для HAProxy "error 404" backend.

Критерій виконання: haproxy.cfg файл містить конфігурацію.

### Завдання 2
1. Install Haproxy + TLS frontend. 
2. Configure backend servers with TLS (Nginx/Apache/etc + TLS). Pass HTTPS traffic to a backend server without decrypting the traffic on the load balancer.

Критерій виконання: haproxy.cfg файл містить конфігурацію.

### Завдання 3
Додати у Docker-compose файл traefik
Налаштувати container labels для Python app та збільшити кількість запускаемих контейнерів до 4
Добитись того що б трафік розкидався через traefik у різні контейнери з  Python app

Критерій виконання: traefik роутить трафік до всіх сервісів

Виконання завдання оформити у вигляді Pull Request з Dockerfile, Docker-compose та аплікейшном. Посилання на pull request розмістити у особовому кабінеті.