create database restaurant;

use restaurant;

create TABLE category(
    id_category int(5) PRIMARY KEY auto_increment not null, 
    name varchar(30) not null
    );

create table cashier(
    id_cashier int(5) PRIMARY KEY auto_increment not null, 
    name varchar(30) not null);

create table product(
    id_product int(5) PRIMARY KEY auto_increment not null, 
    name varchar(30) not null, 
    price int(10) not null, 
    id_category int(5) not null, 
    id_cashier int(5) not null,
    key id_category (id_category),
    key id_cashier (id_cashier),
    CONSTRAINT fk_id_category FOREIGN KEY (id_category) REFERENCES category (id_category),
    CONSTRAINT fk_id_cashier FOREIGN KEY (id_cashier) REFERENCES cashier (id_cashier)
    );

insert into category (id_category, name) values (1, "Food"), (2, "Drink");

insert into cashier (id_cashier, name) values (1, "Pevita Pearce"), (2, "Raisa Andriana"), (3, "Brian Adyatma"), (4, "Suzy");

insert into product(id_product, name, price, id_category, id_cashier) values (1,"Latte",10000,2,1), (2,"Cake",20000,1,2), (3,"Steak",45000,1,3), (4,"Jjangmyeon",35000,1,4);

select kasir.name as cashier, produk.name as product, kategori.name as category, produk.price from product produk, category kategori, cashier kasir where produk.id_cashier = kasir.id_cashier and produk.id_category = kategori.id_category
