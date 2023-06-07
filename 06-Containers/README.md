## Develop industry standard for containers

### Завдання 0
1. Створити Dockerfile з Redis
2. Запустити container з Redis з обмеженнями 256 Мб ОЗУ та 0,5 CPU 
3. Отримати значення memory.limit_in_bytes и cpu.cfs_quota_us (cgget)
4. Запустити container з Redis з іменованим volume та створити декілька ключів
5. Видалити container та запустити container з Redis додавши до нього volume який був створений на попередньому степі
6. Перевірити доступність записаних ключів в середині Redis container
7. Ознайомитись з командою docker inspect на прикладі запущенного Redis container

   Виконання завдання (вивід команд терміналу в текстовому вигляді) оформити у вигляді Pull Request з Dockerfile.
   Посилання на pull request розмістити у особовому кабінеті.

### Завдання 1

1. Збілдити docker image Python flask.
2. Запустити Redis container.
3. Запустити Python container.
4. run.sh файл містить команди запуску контейнерів.
5. Порт Redis контейнера недоступний із хоста докер сервера (ключі p, P не використовувати).
6. Python container підключається до Redis container як 127.0.0.1:6379.

    Виконання завдання оформити у вигляді Pull Request з Dockerfile, python code. Посилання на pull request розмістити у особовому кабінеті.


### Завдання 2
1. Написати Python код який виводить кожні 10сек current time and date.
2. Збілдити docker image.
4. run.sh файл містить команду запуску контейнера.
5. Запустити контейнер, переконатися що в логах є кожні 10с поточні час та дата.

Виконання завдання оформити у вигляді Pull Request з Dockerfile, python code. Посилання на pull request розмістити у особовому кабінеті.