create database db_lista1_ex1;
use db_lista1_ex1;

-- tabela com até 5 dados --
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    horas_trabalhadas decimal (3,2) not null,
    salario decimal(6,2) not null,
    primary key (id)
);
INSERT INTO tb_funcionarios (nome,departamento,horas_trabalhadas,salario) VALUES ("Luana","Dev Júnior",8.00,2600.00);
INSERT INTO tb_funcionarios (nome,cargo,horas_trabalhadas,salario) VALUES ("Kaciany","Dev Pleno",8.00,9000.00);
INSERT INTO tb_funcionarios (nome,cargo,horas_trabalhadas,salario) VALUES ("Vinicius","Dev Junior",8.00,3600.00);
INSERT INTO tb_funcionarios (nome,cargo,horas_trabalhadas,salario) VALUES ("Neuza","Gerente de Projetos",9.00,7000.00);
INSERT INTO tb_funcionarios (nome,cargo,horas_trabalhadas,salario) VALUES ("Francisco","Estagiário",6.00,1500.00);

-- Faça um select que retorne os funcionários com salário maior que 2000 --
select * from tb_funcionarios where salario > 2000.00;

-- Faça um select que retorne os funcionários com salário menor que 2000 --
select * from tb_funcionarios where salario < 2000.00;

-- Atualizar um dado desta tabela através de uma query de atualização --
update tb_funcionarios set salario = 8000.00 where id = 4;

select * from tb_funcionarios
