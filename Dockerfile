FROM alpine:latest

RUN apk add --no-cache mariadb mariadb-client

# Необходимо выполнить инициализацию MySQL сервера и запустить его
# Также можно добавить настройки, пользователей и базы данных, если это необходимо
RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

# Укажите параметры конфигурации MySQL, если это необходимо
# COPY my.cnf /etc/mysql/my.cnf

# ENTRYPOINT для запуска MySQL Server в фоновом режиме
ENTRYPOINT ["mysqld"]
