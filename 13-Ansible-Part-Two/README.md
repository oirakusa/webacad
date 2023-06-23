## Ansible Part Two

### Завдання 1

1. Сконфігурувати локальне середовище за допомогою Vagrant: 
    - 1 mngm (Ubuntu)
    - 1 server (Centos)
    - 1 server (Ubuntu)
    - 1 server (centos without Python)
2. Налаштувати Ansible
3. Створити корректний inventory.ini
4. Налаштувати доступ ssh по ключу з mngm до для всіх машин
5. Написати ролі: nginx, php, mysql
6. Написати Ansible Playbook для встановлення LEMP (Centos, Ubuntu) на основі написаних ролей у пункту 5
7. Запустити Playbook

Критерій виконання:
- Centos сервер: встановлені та налаштовані nginx, php, mysql
- Ubuntu сервер: встановлені та налаштовані nginx, php, mysql

### Завдання 2
1. Написати Playbook для встановлення Python на centos
2. Запустити Playbook
3. Ввімкнути gather_facts та запустити Playbook ще раз
4. Встановити на цей сервер роль nginx

Критерій виконання:
- встановлени nginx

Виконане завдання оформити у вигляді pull request.
