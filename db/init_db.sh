#!/bin/bash
add_user(){
    echo "GRANT ALL ON $WP_DATABASE.* TO '$1'@'%' IDENTIFIED BY '$2'"|mysql -uroot -p$MYSQL_ROOT_PASSWORD 

}
if [ -n "$WP_DATABASE"  -a -n  "$WP_DB_USER" -a -n  "$WP_DB_PWD" ]; then
    echo Adding database $WP_DATABASE
    mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD create $WP_DATABASE
    echo Adding user $WP_DB_USER
    add_user $WP_DB_USER $WP_DB_PWD
fi