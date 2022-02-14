/*
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
*/

create database db_pizzaria_legal;
/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
*/

use db_pizzaria_legal;

create table tb_categoria(
id            int                       primary key auto_increment,
tipo          varchar(30)               not null,
tamanho       varchar(30)               not null
);

create table tb_pizza(
 id_piz        int                       primary key auto_increment,
 preco         decimal                   not null,
 pagamento     varchar(30)               not null,
 sabor         varchar(30)               not null,
 refri         boolean                   not null,
 
 id_categ      int references tb_categoria(id)
);


-- Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria ( tipo, tamanho ) values( 'Salgada', 'Grande' ); 
insert into tb_categoria ( tipo, tamanho ) values( 'Doce', 'Media' ); 
insert into tb_categoria ( tipo, tamanho ) values( 'Pizza Pastel', 'Grande' ); 
insert into tb_categoria ( tipo, tamanho ) values( 'Salgada', 'Pequena' ); 
insert into tb_categoria ( tipo, tamanho ) values( 'Doce', 'Media' ); 

-- Popule esta tabela pizza com até 8 dados.

insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 65.90, 'Dinheiro', 'Bacon', true, 1);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 45.90, 'Dinheiro', 'Chocolate', true, 2);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 55.90, 'Cartão', 'Calabresa', true, 3);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 25.90, 'Dinheiro', 'Mussarela', false, 4);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 40.90, 'Pix', 'Brigadeiro', true, 5);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 55.90, 'Cartão', 'Frango - Catupiri', false, 3);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 40.90, 'Dinheiro', 'Romeu e Julieta', true, 5);
insert into tb_pizza ( preco, pagamento, sabor, refri, id_categ ) values ( 65.90, 'Cartão', 'Portuguesa', true, 1);



-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.

select * from tb_pizza where preco > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

select * from tb_pizza where preco > 29 && preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.

select * from tb_pizza where tb_pizza.sabor like "%C%";

-- Faça um um select com Inner join entre tabela categoria e pizza.

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.id_categ;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.id_categ where tipo  = 'Doce';
