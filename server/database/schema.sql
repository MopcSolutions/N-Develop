SELECT * FROM pg_catalog.pg_tables;



create database ndev_dev WITH OWNER "ndev_admin" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;

create database ndev_test WITH OWNER "ndev_admin" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;
create database ndev_prod WITH OWNER "ndev_admin" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;


create user ndev_admin with encrypted password '33*33=1089';
-- grant all privileges on database ndev_dev to ndev_admin;


create schema ndevelop authorization ndev_admin;

grant select,insert,update,delete on database ndev_test to ndev_admin;
grant select,insert,update on database ndev_prod to ndev_admin;
