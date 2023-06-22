create database procedure;
use procedure;

create table member (
    id INT PRIMARY KEY,
    name varchar(20),
    fonction varchar(40)
);

create table note (
    member_id INT,
    costume_id INT,
    PRIMARY KEY (member_id, costume_id),
    name varchar(20),
    note float,
    foreign key member_id references member on id,
    foreign key costume_id references costume on id
);

create table costume (
    id INT PRIMARY KEY,
    name varchar(20),
    style_id INT,
    foreign key style_id references style on id
);

create table style (
    id INT PRIMARY KEY,
    name varchar(20)
);