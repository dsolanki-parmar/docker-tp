version: '3.1'

services:
wordpress:
image: wordpress
restart: always
ports:
- 80:80
environment:
WORDPRESS_DB_HOST: db
WORDPRESS_DB_USER: admin
WORDPRESS_DB_PASSWORD: admin
WORDPRESS_DB_NAME: wordpressdb

db:
image: mysql:5.7
restart: always
environment:
MYSQL_DATABASE: wordpressdb
MYSQL_USER: admin
MYSQL_PASSWORD: admin
MYSQL_RANDOM_ROOT_PASSWORD: 'yes'
