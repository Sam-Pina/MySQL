/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/

create database db_generation_game_online;

/* O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).*/

use db_generation_game_online;

create table tb_classe(
id            int                       primary key auto_increment,
nome          varchar(30)               not null
);

create table tb_personagem(
 id_pers       int                       primary key auto_increment,
 poder         bigint                    not null,
 forca         bigint                    not null,
 agilidade     bigint                    not null,
 defesa        bigint                    not null,
 
 id_classe     int references tb_classe(id)
);

-- Popule esta tabela classe com até 5 dados.

insert into tb_classe ( nome ) values( 'Arqueiro' ); 
insert into tb_classe ( nome ) values( 'Barbaro' );       
insert into tb_classe ( nome ) values( 'Mago' );       
insert into tb_classe ( nome ) values( 'Assassino' );       
insert into tb_classe ( nome ) values( 'Tanque' );                    

-- Popule esta tabela personagem com até 8 dados.

insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 3000, 700, 92, 900 , 2 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 360, 200, 50, 3000, 1 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 7100, 1200, 100, 5000, 5 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 900, 1050, 110, 1200, 4 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 2200, 500, 85, 1500, 3 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 500, 350, 62, 2000, 2 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 3070, 1100, 120, 3600, 4 ); 
insert into tb_personagem (id_pers, poder, forca, agilidade, defesa, id_classe  ) values(null, 1030, 900, 102, 900, 1 ); 
 
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

select * from tb_personagem where poder > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

select * from tb_personagem where defesa > 1000 && defesa < 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra I.

select * from tb_classe where tb_classe.nome like "%i%";

-- Faça um um select com Inner join entre tabela classe e personagem.

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.id_classe;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todo os personagens que são arqueiros).

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.id_classe where nome  = 'Arqueiro';
