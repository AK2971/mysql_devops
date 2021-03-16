FROM ubuntu
RUN apt-get update; apt-get install mysql-server -y
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
COPY ./test.sql .
ADD test.sql /docker-entrypoint-initdb.d
EXPOSE 4040
