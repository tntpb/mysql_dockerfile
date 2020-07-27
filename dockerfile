FROM mysql:5.7

#设置免密登录
#ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY schema.sql /docker-entrypoint-initdb.d/schema.sql
COPY privileges.sql /mysql/privileges.sql
ADD mysqld.cnf  /etc/mysql/mysql.conf.d/mysqld.cnf

#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]