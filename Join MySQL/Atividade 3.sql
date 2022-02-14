/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
*/

create database db_farmacia_do_bem;
/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
*/

use db_farmacia_do_bem;

create table tb_categoria(
id            int                       primary key auto_increment,
tipo          varchar(30)               not null,
idade_ind     int                       not null
);

create table tb_produto(
 id_prod       int                       primary key auto_increment,
 nome          varchar(30)               not null,
 preco         decimal                   not null,
 pagamento     varchar(30)               not null,
 comprimido    boolean                   not null,

 id_categ      int references tb_categoria(id)
);

-- Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria ( tipo, idade_ind ) values( 'Manipulado', 18 ); 
insert into tb_categoria ( tipo, idade_ind ) values( 'Generico', 10 ); 
insert into tb_categoria ( tipo, idade_ind ) values( 'Marca', 03 ); 
insert into tb_categoria ( tipo, idade_ind ) values( 'Similar', 15 ); 

-- Popule esta tabela Produto com até 8 dados.
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Amoxicilina', 15.90, 'Dinheiro', true, 1);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Paracetamol ', 51.90, 'Dinheiro', false, 2);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Dipirona  ', 3.90, 'Dinheiro', false, 2);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Depressivo ', 35.90, 'Dinheiro', true, 1);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Ibuprofeno   ', 70.90, 'Dinheiro', false, 4);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Diclofenaco   ', 5.90, 'Cartão', false, 3);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Estomazil  ', 120.90, 'Pix', false, 2);
insert into tb_produto ( nome, preco, pagamento, comprimido, id_categ ) values ( 'Celecoxibe   ', 15.90, 'Pix', false, 3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produto where preco > 3 && preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.

select * from tb_produto where tb_produto.nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ;

-- Faça um select onde traga todos os Produtos de uma categoria específica (pagar pix).

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ where pagamento  = 'Pix';
