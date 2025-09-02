create database loja;

use loja;


create table produto (
id_produto serial primary key,
nome_produto varchar(100) not null
);

create table fornecedor (
id_fornecedor serial primary key,
nome_fornecedor varchar(30)
);

create table cidade (
id_cidade serial primary key,
nome_cidade varchar(20)
);

create table encomenda (
id_encomenda serial primary key,
datas date not null,
quantidade numeric(10)
);

create table info (
id_info serial primary key,
id_produtofk int,
id_fornecedorfk int,
id_cidadefk int,
id_encomendafk int,
foreign key (id_produtofk) references produto(id_produto),
foreign key (id_fornecedorfk) references fornecedor(id_fornecedor),
foreign key (id_cidadefk) references cidade(id_cidade),
foreign key (id_encomendafk) references encomenda(id_encomenda)
);


insert into produto (nome_produto) values
('Café'),
('Chá'),
('Chocolate'),
('Biscoito'),
('Leite');

insert into fornecedor (nome_fornecedor) values
('Fernando'),
('Maria'),
('Carlos'),
('Ana'),
('Roberto');

insert into cidade (nome_cidade) values
('São Paulo'),
('Rio de Janeiro'),
('Belo Horizonte'),
('Curitiba'),
('Porto Alegre');

insert into encomenda (datas, quantidade) values
('2025-08-01', 10),
('2025-08-02', 5),
('2025-08-03', 15),
('2025-08-04', 7),
('2025-08-05', 20);

insert into info (id_produtofk, id_fornecedorfk, id_cidadefk, id_encomendafk) values
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);


show tables;

select * from produto;
select * from fornecedor;
select * from encomenda;
select * from info;

