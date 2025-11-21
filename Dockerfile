FROM postgres

WORKDIR /docker-entrypoint-initdb.d

COPY ./scripts .