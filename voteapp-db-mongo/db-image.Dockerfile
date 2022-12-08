FROM mongo:4.2-rc-bionic
EXPOSE 27017
COPY initial-data.js /docker-entrypoint-initdb.d/