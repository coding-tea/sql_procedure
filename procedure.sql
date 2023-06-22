create database sql_procedure;
use sql_procedure;

create table members (
    idM INT auto_increment PRIMARY KEY,
    member_name varchar(20),
    fonction varchar(40)
);

create table style (
    idS INT auto_increment PRIMARY KEY,
    style_name varchar(20)
);

create table costume (
    idC INT auto_increment PRIMARY KEY,
    costume_name varchar(20),
    style_id INT,
    foreign key (style_id) references style(idS)
);

create table note (
    member_id INT,
    costume_id INT,
    PRIMARY KEY (member_id, costume_id),
	foreign key (member_id) references members(idM),
    foreign key (costume_id) references costume(idC),
    note float
);