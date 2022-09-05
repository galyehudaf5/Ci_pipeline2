value=$(curl http://webapi:80/api/Chat | jq ".[].content")
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -D demo -e "create table messages(id int , message varchar(255));"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -D demo  -e "insert into messages(message) values('$value');"

