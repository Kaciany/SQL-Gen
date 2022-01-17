create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
sabor varchar(15) not null,
massa varchar(25) not null,
preco decimal(6,2) not null,
primary key (id)
);

insert into tb_categoria(sabor,massa,preco) values ("Salgada","Vegana",90.00);
insert into tb_categoria(sabor,massa,preco) values ("Doce","Tradicional",45.00);
insert into tb_categoria(sabor,massa,preco) values ("Doce","Sem glúten",29.00);
insert into tb_categoria(sabor,massa,preco) values ("Salgada","Tradicional",60.00);


create table tb_pizza (
id bigint auto_increment,
recheio varchar(255) not null,
qtd varchar(255) not null,
tamanho varchar(255)not null,
bordasAdc boolean,
classe_id bigint not null,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_categoria (id)
);


-- Popule esta tabela personagem com até 8 dados.
insert into tb_pizza(recheio,qtd,tamanho,bordasAdc,classe_id) values ("KitKat",1,"Grande",false,1);
insert into tb_pizza(recheio,qtd,tamanho,bordasAdc,classe_id) values ("Oreo",1,"Media",false,1);
insert into tb_pizza(recheio,qtd,tamanho,bordasAdc,classe_id) values ("Meia\Meia",1,"Grande",true,2);
insert into tb_pizza(recheio,qtd,tamanho,bordasAdc,classe_id) values ("Brócolis",2,"Media",true,2);
insert into tb_pizza(recheio,qtd,tamanho,bordasAdc,classe_id) values ("Doce de leite",3,"Pequena",false,3);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_categoria where preco > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select * from tb_categoria where preco between 29 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra K
select * from tb_pizza where recheio like "%K%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
select tb_categoria.sabor,  tb_categoria.massa, tb_pizza.qtd,tb_pizza.tamanho from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.classe_id;
--  Faça um select onde traga todos os Produtos de uma categoria específica
select tb_categoria.sabor,tb_categoria.massa
from tb_categoria right join tb_pizza
on tb_pizza.id = tb_pizza.classe_id where tb_categoria.id = 2;