use mysql;
<<<<<<< HEAD
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user 'root'@'%' identified by 'yunwei3322';
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为123456：
grant all on *.* to 'root'@'%';
-- 这一条命令一定要有：
=======
create user 'root'@'%' identified by 'yunwei3322';
grant all on *.* to 'root'@'%';
>>>>>>> 0bac749752ec9cc3fb73b8ca717a113be9e743cb
flush privileges;