<<<<<<< HEAD
FROM mysql:5.7.31
=======
FROM mysql:8.0
>>>>>>> 0bac749752ec9cc3fb73b8ca717a113be9e743cb

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY schema.sql /mysql/schema.sql
COPY privileges.sql /mysql/privileges.sql

#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]