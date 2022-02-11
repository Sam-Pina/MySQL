-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
drop database e_commerce;

-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

use e_commerce;

create table produtos(            -- criando tabela e colocando atributos
id          int  primary key auto_increment,
nome_prod   varchar (20) not null,
tipo        varchar (20) not null,
qtd_estoque int not null,
valor       decimal not null
);

-- Popule esta tabela com até 8 dados;;           // inserindo dados
insert into produtos values (null, 'Camiseta', 'Algodão', 19, 2500);
insert into produtos values (null, 'Blusa', 'Moleton', 10, 200);
insert into produtos values (null, 'Bone', 'Estampado', 100, 150);
insert into produtos values (null, 'Colar', 'Prata', 5, 55000);
insert into produtos values (null, 'Calsa', 'Jeans', 15, 500);
insert into produtos values (null, 'Relogio', 'Casual', 9, 700);
insert into produtos values (null, 'Camisa', 'Dri-fit', 54, 80);
insert into produtos values (null, 'Meia', 'Algodão', 50, 15);


-- Ao término atualize um dado desta tabela através de uma query de atualização.
 update produtos set tipo = "Ouro", valor = 60000 where id = 4;

-- Faça um select que retorne os produtos com o valor maior do que 500..
 select * from produtos where valor >= 500;       -- selectionando dados com valores maiores do que 500

-- Faça um select que retorne os produtos com o valor menor do que 500..
select * from produtos where valor <= 500;      -- selectionando dados com valores menores do que 500
