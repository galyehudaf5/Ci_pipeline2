FROM mariadb

RUN apt-get update && apt install -y jq && apt install -y curl

ARG SQL_PASSWORD

ENV MYSQL_ROOT_PASSWORD $SQL_PASSWORD

ENV MARIADB_DATABASE demo

COPY ./test.sh docker-entrypoint-initdb.d

