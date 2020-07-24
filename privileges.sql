use mysql;
create user 'root'@'%' identified by 'yunwei3322';
grant all on *.* to 'root'@'%';
flush privileges;