## Logs, Secrets.

### Завдання 1

Розгорнути в Kubernetes https://github.com/kubernetes-sigs/metrics-server helm chart.
Налаштувати Horizontal Pod Autoscaler для Kuard (або Python Flask, web-api) helm chart.
Критерій виконання: Kuard/Python Flask масштабується якщо навантаження на Pod memory понад 80%.

Виконання завдання оформити у вигляді Pull Request з helm chart.
Посилання на pull request розмістити у особовому кабінеті.

### Завдання 2
Pod містить два контейнера - Nginx i Debian та спільний volume для комунікації.

Перший контейнер (Nginx) - працює як nginx server. Спільний shared Volume змонтований як /usr/share/nginx/html.

Другий (Debian) - спільний shared Volume змонтований як /shared-data. Bash/python/etc скрипт з інтервалом 1хв пише дату та час у файл /shared-data/index.html.

Критерій виконання: Відкриваємо http сторінку (з роутингом на Nginx под, ingress+svc) і бачимо дату та час. Через хвилину інформація оновлюється.

Виконання завдання оформити у вигляді Pull Request з helm chart.
Посилання на pull request розмістити у особовому кабінеті.