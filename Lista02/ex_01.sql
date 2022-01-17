create database db_generation_game_online_ex01;
use  db_generation_game_online_ex01;
create table tb_classe(
id bigint auto_increment,
nick_name varchar(255) not null,
elo varchar(255) not null,
ranking int not null,
primary key (id)
);

-- Popule esta tabela classe com até 5 dados.
insert into tb_classe(nick_name,elo,ranking) values ("PedroG@mer183","Bronze III",1852);
insert into tb_classe(nick_name,elo,ranking) values ("Nymph", "Bronze III",1050);
insert into tb_classe(nick_name,elo,ranking) values ("PatrickEsponja", "Platina III",78);
insert into tb_classe(nick_name,elo,ranking) values ("Bob_Estrela", "Ouro II",127);
insert into tb_classe(nick_name,elo,ranking) values ("FelipeParodi@s", "Diamante I",10);

select * from tb_personagem;

 create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
habilidade varchar (255) not null,
poder_atq int not null,
defesa int not null,
classe_id bigint not null,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome, habilidade,poder_atq,defesa,classe_id) values ("Dungeon Master","Guia de Jornada", 1400,1500,1);
insert into tb_personagem (nome, habilidade,poder_atq,defesa,classe_id) values ("Chiyo – Ninja Médica","Criar poções", 900,800,2);
insert into tb_personagem (nome, habilidade,poder_atq,defesa,classe_id) values ("Eric- O Cavaleiro","Escudo Protetor", 2500,2000,5);
insert into tb_personagem (nome, habilidade,poder_atq,defesa,classe_id) values ("Hank – O Guarda","Arco Mágico", 1000, 1700,6);
insert into tb_personagem (nome, habilidade,poder_atq,defesa,classe_id) values ("Diana – A Acrobata","Saltos acrobaticos", 900,890,3);





-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where poder_atq > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;
-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%Chiyo – Ninja Médica";

-- Faça um um select com Inner join entre tabela classe e personagem.
select tb_personagem.nome, tb_personagem.habilidade, tb_personagem.poder_atq, tb_classe.elo, tb_classe.ranking from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
--  Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
-- os personagens que são arqueiros)
select tb_personagem.nome, tb_personagem.defesa,tb_personagem.habilidade
from tb_personagem right join tb_classe
on tb_classe.id = tb_personagem.classe_id where tb_classe.id = "Saltos acrobaticos";


