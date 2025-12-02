## 1. Запуск нескольких Docker-контейнеров с использованием Docker Compose

![alt text](prevs/1.1.png "Dockf")

Создаем докерфайлы к каждому сервису на примере session-service.
Docker создает "коробку" с Java, кладет туда наш jar файл и настраивает запуск приложения.

![alt text](prevs/1.2.png "Compose")

Создаем yml файл для compose.

![alt text](prevs/1.3.png "Build")
![alt text](prevs/1.4.png "Build2")

Запускаем с помощью docker-compose build -> docker-compose up -> проверяем статус docker-compose ps.

![alt text](prevs/1.png "Postman")

Postman тесты.

## 2. Создание виртуальных машин

![alt text](prevs/2.png "compose")

Созданы виртуальные машины с помощью vagranfile, подняли через vagrant up, вошли в нее через vagrant ssh, исходный код веб-сервиса перенесен в рабочую директорию виртуальной машины. Далее вышли из неё и уничтожили.

## 3. Создание простейшего Docker Swarm

![alt text](prevs/3.1.png "swarm1")

Сборка образов каждого сервиса.

![alt text](prevs/3.2.png "swarm11")

Пуш в docker hub (ранее производилось тегирование).

![alt text](prevs/3.3.png "swarm111")

Создан docker-compose-swarm.yml. Произведен деплой микросервисов на вм с помощью docker stack deploy -c docker-compose-swarm.yml myapp. Результат работы сервисов на скрине.

![alt text](prevs/99.png "ng")
![alt text](prevs/999.png "ng2")

Созданы nginx.conf и nginx-compose.yml

![alt text](prevs/3.png "swarm")

Машины запущены. Микросервисы установлены.

![alt text](prevs/44.png "post")

Тесты Postman с виртуальных машин.

![alt text](prevs/5.png "swarm3")

Отчет по собранным микросервисам.

![alt text](prevs/8.png "swarm5")
![alt text](prevs/9.png "swarm6")
![alt text](prevs/10.png "swarm7")

Информация о работе сервисов в Portainer.
