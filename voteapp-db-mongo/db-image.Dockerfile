FROM mongo:4.2-rc-bionic
COPY initial-data.js /docker-entrypoint-initdb.d/