FROM postgres AS init

WORKDIR /docker-entrypoint-initdb.d
COPY ./scripts .

WORKDIR /setup/
COPY ./setup/ .

