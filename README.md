# mydumper

mydumper - высокопроизводительный набор инструментов для многопоточного резервного копирования (и восстановления) MySQL и Drizzle.
https://github.com/maxbube/mydumper

[hub.docker.com](https://hub.docker.com/r/chatlamin/mydumper)

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64 |
| armhf | arm |

## Запуск

Для запуска выполните:

    docker run --rm \
    chatlamin/mydumper:latest \
    mydumper --help

## Пример

Пример запуска с копирование БД на хост

    BACKUP_DIR='/PATH/TO/HOST'
    TIMESTAMP=$(date '+%d-%m-%Y_%H-%M-%S')
    DB_NAME=имя_бд
    DB_HOST=ip_адрес_или_dns_name_сервера_бд
    DB_USER=имя_пользователя_бд
    DB_PASSWORD=пароль_пользователя_бд

    docker run --rm \
        --volume $BACKUP_DIR/$TIMESTAMP:/backup \
        --volume /etc/localtime:/etc/localtime:ro \
        --volume /etc/timezone:/etc/timezone:ro \
        chatlamin/mydumper:latest \
        sendemail \
        --outputdir=/backup \
        --database=$DB_NAME \
        --host=$DB_HOST \
        --user=$DB_USER \
        --password=$DB_PASSWORD \
        --compress \
        --lock-all-tables \
        --build-empty-files \
        --threads=2 \
        --compress-protocol \
        --verbose=3 \
        --skip-tz-utc \
        --logfile=/backup/log.log
