FROM mysql:latest

WORKDIR /
RUN apt-get update && apt-get install -y unzip curl

RUN curl -L -o master.zip https://github.com/datacharmer/test_db/archive/master.zip 

RUN unzip master.zip && \
    cd test_db-master && \
    mysql -uroot -p${MYSQL_ROOT_PASSWORD} -t < employees.sql


