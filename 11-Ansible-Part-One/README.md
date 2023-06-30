## Ansible Part One

### Завдання 1

1. Сконфігурувати локальне середовище за допомогою Vagrant: 
    - 1 mngm (Ubuntu)
    - 1 front (Centos)
    - 3 db (Centos)
2. Налаштувати Ansible
3. Створити корректний inventory.ini
4. Налаштувати доступ ssh по паролю з mngm до для всіх машин

### Завдання 2
1. Написати Ansible Playbook для встановлення LEMP на Centos
    - nginx: front node
    - php: front node
    - mysql(or mariadb): db node    
2. Запустити Playbook

Критерій виконання:
- front нода: встановлені та налаштовані nginx, php
- db ноди: встановлені та налаштовані mysql or mariadb

Виконане завдання оформити у вигляді pull request.
