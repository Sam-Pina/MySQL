-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
-- create database escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
drop table if EXISTS estudantes;
use escola;

create table estudantes(            -- criando tabela e colocando atributos
id       int  primary key auto_increment,
nome      varchar (20) not null,
sobrenome varchar (20) not null,
idade     int not null,
serie     varchar (20) not null,
nota int not null
);

-- Popule esta tabela com até 8 dados;
insert into estudantes values (null, 'Samuel', 'Pina', 10, 'Quinto Ano', 10);
insert into estudantes values (null, 'Mike', 'johnson', 10, 'Quinto Ano', 6);
insert into estudantes values (null, 'Ana', 'Silva', 12, 'Setimo Ano', 4);
insert into estudantes values (null, 'Rafaela', 'Santos', 13, 'Oitavo Ano', 9);
insert into estudantes values (null, 'Samanta', 'Lima', 9, 'Quarto Ano', 7);
insert into estudantes values (null, 'Nathan', 'Oliveira', 10, 'Quarto Ano', 7);
insert into estudantes values (null, 'Larissa', 'Marques', 14, 'Nono Ano', 8);
insert into estudantes values (null, 'Daniel', 'Pina', 7, 'Segundo Ano', 10);

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
-- select * from estudantes where nota > 7;       -- selectionando dados com notas maiores do que 7

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização. 
 update estudantes set nota = 3 where id = 6;    -- atualizando dados
 select * from estudantes where nota <= 7;       -- selectionando dados com notas menores do que 7


