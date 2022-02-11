-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- create database servicos_rh     -- criando database

-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
drop table if exists funcionarios; 

use servicos_rh;

create table funcionarios(            -- criando tabela e colocando atributos
id        int  primary key auto_increment,
nome      varchar (20) not null,
sobrenome varchar (20) not null,
idade     int not null,
salario   bigint (7) not null
);

-- Popule esta tabela com até 5 dados;           // inserindo dados
insert into funcionarios values (null, 'Ágata', 'Souza', 19, 2500);
insert into funcionarios values (null, 'Samuel', 'Pina', 19, 5500);
insert into funcionarios values (null, 'Amaral', 'Oliveira', 30, 3500);
insert into funcionarios values (null, 'Cristiano', 'Ronaldo', 25, 1500);
insert into funcionarios values (null, 'Larissa', 'Silva', 15, 500);


-- Ao término atualize um dado desta tabela através de uma query de atualização.
update funcionarios set nome = "Douglas", salario = 3600 where id = 3;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select * from funcionarios where salario >= 2000;       -- selectionando dados com salarios maiores do que 2000

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from funcionarios where salario <= 2000;      -- selectionando dados com salarios menores do que 2000

