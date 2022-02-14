/*
Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
*/
create database db_construindo_a_nossa_vida;

/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

use db_construindo_a_nossa_vida;

create table tb_categoria(
id int primary key auto_increment,
nome varchar (20) not null,
tipo varchar (30)
);

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria(nome, tipo) values("Interior", "Interior");
insert into tb_categoria(nome, tipo) values("Exterior", "Exterior");
insert into tb_categoria(nome, tipo) values("Pré-fabricada", "Pré-fabricada");
insert into tb_categoria(nome, tipo) values("Container. ", "Container.");
insert into tb_categoria(nome, tipo) values("Hidráulica ", "Hidráulica");


create table tb_produto (
id int primary key auto_increment,
nome varchar (20) not null,
preco_custo decimal (7,2),
preco_venda decimal (7,2),
tipo varchar (30),
id_categoria int references tb_categoria(id)
);

/*Popule esta tabela Produto com até 8 dados.*/
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Porta", 100, 200, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Janela", 50, 100, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Cimento", 15, 46, "Construção", 2);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Areia", 100, 200, "Casa", 1);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Metal", 500, 600, "Construção", 3);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Portão", 1000, 1200, "casa", 4);
insert into tb_produto(nome, preco_custo, preco_venda, tipo, id_categoria) values("Cano PVC", 5, 10, "Casa", 5);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco_venda > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco_venda between 3 and 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/
select * from tb_produto where nome like "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select tb_produto.nome as "Produto", tb_categoria.nome as "Categoria" from tb_produto  
join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/
select tb_produto.nome as "Produto", tb_categoria.nome as "Categoria" from tb_produto 
join tb_categoria on tb_categoria.id = tb_produto.id_categoria and tb_categoria.id = 5;
