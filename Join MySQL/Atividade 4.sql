/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
*/

create database db_cidade_das_carnes;
/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/

use db_cidade_das_carnes;

create table tb_categoria(
id            int                       primary key auto_increment,
tipo          varchar(30)               not null
);

create table tb_produto(
 id_prod       int                       primary key auto_increment,
 nome          varchar(30)               not null,
 preco         decimal                   not null,
 pagamento     varchar(30)               not null,
 promocao      boolean                   not null,

 id_categ      int references tb_categoria(id)
);

-- Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria ( tipo ) values( 'Suina'); 
insert into tb_categoria ( tipo ) values( 'Bovina'); 
insert into tb_categoria ( tipo ) values( 'Branca'); 
insert into tb_categoria ( tipo ) values( 'Moida'); 

-- Popule esta tabela Produto com até 8 dados.

insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Frango', 15.90, 'Dinheiro', false, 3);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Peixe ', 21.90, 'Dinheiro', false, 3);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Bisteca  ', 13.90, 'Dinheiro', true, 1);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Bacon ', 35.90, 'Dinheiro', false, 1);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Cupim   ', 70.90, 'Cartao', true, 2);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Filé mignon', 85.90, 'Cartão', false, 2);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Patinho  ', 60.90, 'Pix', false, 4);
insert into tb_produto ( nome, preco, pagamento, promocao, id_categ ) values ( 'Contra - Filé ', 35.90, 'Pix', true, 4);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produto where preco > 3 && preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.

select * from tb_produto where tb_produto.nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ where pagamento  = 'Pix';
