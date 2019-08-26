# create table category
# (
#   id            int unsigned auto_increment primary key,
#   name          varchar(255)
# );
#
# create table books
# (
#   id            int unsigned auto_increment primary key,
#   category_id   int unsigned not null,
#   name          varchar(255),
#   price         int not null,
#   quantity      int,
#   description   text,
#   image         text,
#   publisher     varchar(255),
#   author        varchar(50),
#   translator    varchar(50),
#   release_date  date,
#   status        int,
#   constraint fk_category_id foreign key (category_id) references category (id)
# );