#/usr/bin
yum install postgresql-server
service postgresql initdb
service postgresql start
su -l postgres createuser --no-superuser --no-createdb --no-createrole --pwprompt mini-web createdb --owner mini-web mini-web
service postgresql reload 
