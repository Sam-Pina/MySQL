/*
Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

*/
create database db_cursoDaMinhaVida;
/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
*/

use db_cursoDaMinhaVida;

create table tb_categoria(
id            int                       primary key auto_increment,
tipo_curso    varchar(30)               not null,
periodo       varchar(30)               not null
);


create table tb_produto(
 id_prod       int                       primary key auto_increment,
 duracao       varchar(30)               not null,
 preco         decimal                   not null,
 pagamento     varchar(30)               not null,
 promocao      boolean                   not null,

 id_categ      int references tb_categoria(id)
);

-- Popule esta tabela Categoria com até 5 dados.

insert into tb_categoria ( tipo_curso, periodo ) values( 'Informatica', 'Noite'); 
insert into tb_categoria ( tipo_curso, periodo ) values( 'Matematica', 'Manhã'); 
insert into tb_categoria ( tipo_curso, periodo ) values( 'Ingles', 'Tarde'); 
insert into tb_categoria ( tipo_curso, periodo ) values( 'Economia', 'Noite'); 
insert into tb_categoria ( tipo_curso, periodo ) values( 'Agricultura', 'Manhã'); 

-- Popule esta tabela Produto com até 8 dados.

insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '3 semestres', 150.90, 'Dinheiro', false, 3);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '10 semestres', 210.90, 'Dinheiro', false, 5);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '7 semestres', 130.90, 'Dinheiro', true, 1);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '6 semestres', 35.90, 'Dinheiro', false, 2);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '8 semestres', 110.90, 'Cartao', true, 3);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '5 semestres', 85.90, 'Cartão', false, 2);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '2 semestres', 40.90, 'Pix', false, 1);
insert into tb_produto ( duracao, preco, pagamento, promocao, id_categ ) values ( '1 semestres', 35.90, 'Pix', true, 4);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from tb_produto where preco > 3 && preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.

select * from tb_categoria where tb_categoria.tipo_curso like "%I%";

-- Faça um um select com Inner join entre tabela categoria e produto.

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ;

-- Faça um select onde traga todos os Produtos de uma categoria específica (PIX).

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.id_categ where pagamento  = 'Pix';
