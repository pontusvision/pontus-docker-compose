FROM mysql:latest

#COPY my.cnf /etc/mysql/my.cnf
#COPY mysqld.cnf  /etc/mysql/mysql.conf.d/mysqld.cnf



RUN apt-get update && apt-get install -y unzip curl

RUN curl -L -o master.zip https://github.com/datacharmer/test_db/archive/master.zip 

RUN unzip master.zip 

COPY initdb.sh /docker-entrypoint-initdb.d/
RUN chmod 777 /docker-entrypoint-initdb.d/initdb.sh


