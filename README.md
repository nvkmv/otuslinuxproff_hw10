# Домашнее задание по bash

Срипт лежит в ``` ansible/roles/sendlog/templates/ ```

Запрет на одновременный запуск нескольких копий скрипта сделан через flock в файле ``` ansible/roles/sendlog/tasks/crontab.yml ```

Для демонстрации скрипт будет выполнятся каждуюю минту, изменить интервал можно также в ``` ansible/roles/sendlog/tasks/crontab.yml ```

Запуск демонстрации работы:
  - в ``` ansible/group_vars/all.yml ``` измените значение переменной ``` mail: ``` на адрес вашей почты
  - ``` vagrant up ``` - при запуске виртуальной машины нужно выбрать сетевой интрфейс
  - По адресу: ``` localhost:8080/ ``` будет поднят веб-сервер, потеструйте его разными запросами
  - через несколько минут проверьте указанную почту, на нее прийдет  отчет (проверте спам) 
    
  Тестировал на мобильном интернете, домашний провайдер не пропускает такие письма (нужно mailrc/postfix настроить). Почтовый домен - Yandex

``` tree: ```

![Screenshot_2](https://user-images.githubusercontent.com/59445051/213296347-5132eb3e-edb8-43f6-a646-86d7baba9fa2.png)
