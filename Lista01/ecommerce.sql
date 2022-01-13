create database db_lista1_ex2_ecommerce;
use db_lista1_ex2_ecommerce;

-- 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
create table tb_produto(
	id bigint(5) auto_increment,
    categoria varchar(200) not null,
	nome varchar(200) not null,
    preco decimal (6,2) not null,
    quantidade int not null,
    primary key (id)
    );
    -- Popule esta tabela com até 8 dados
    
INSERT INTO tb_produto (categoria,nome,preco, quantidade) VALUES ("Cama Mesa & Banho","Conj toalha de banho",200.00,1200);
INSERT INTO tb_produto (categoria,nome,preco, quantidade) VALUES ("Eletrodomésticos","fogão",2000.00,1200);
INSERT INTO tb_produto (categoria,nome,preco, quantidade) VALUES ("Móveis","Guarda Roupa Dobrável",177.99,1000);
INSERT INTO tb_produto (categoria,nome,preco, quantidade) VALUES ("Smartphones","galaxy A",2500.00,1000);


-- Faça um select que retorne os produtos com o valor maior do que 500.
	select * from tb_produto where preco> 500.00;

-- Faça um select que retorne os produtos com o valor menor do que 500.
	select * from tb_produto where preco < 500.00;

 -- Atualize um dado desta tabela através de uma query de atualização.
	update tb_produto set nome = "Iphone"  where id = 5;


select * from tb_produto
