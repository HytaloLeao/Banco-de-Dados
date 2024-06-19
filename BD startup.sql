create database starup;

create table membros(
membro_id int primary key,
nome varchar(20),
cargo varchar(50)
);

create table tarefas(
tarefa_id int primary key,
descricao varchar(50),
membro_id int,
foreign key (membro_id) references membros(membro_id)
);

insert into membros(membro_id, nome, cargo) values(
1, 'Paulo', 'Programador1');

insert into membros(membro_id, nome, cargo) values(
2, 'João Silva', 'Desenvolvedor Full Stack');

insert into membros(membro_id, nome, cargo, genero) values(
3, 'Maria Santos', 'Analista de Banco de Dados', 'F');

insert into membros(membro_id, nome, cargo, genero) values(
4,'Pedro Oliveira', 'Engenheiro de Software', 'M');

insert into membros(membro_id, nome, cargo, genero) values(
5,'Ana Costa', 'Administrador de Redes', 'F');

insert into membros(membro_id,nome,cargo,genero) values(
6,'Carlos Souza', 'Especialista em Segurança da Informação', 'M');

insert into tarefas(tarefa_id, descricao, membro_id) values(
1,'Criar classe do produto',1);

insert into tarefas(tarefa_id, descricao, membro_id) values(
2,'Desenvolver novo módulo de login para o sistema', 2);

insert into tarefas(tarefa_id, descricao, membro_id) values(
3, 'Realizar manutenção preventiva nos servidores', 4);

insert into tarefas(tarefa_id, descricao, membro_id) values(
4, 'Criar documentação técnica do projeto XYZ', 5);

insert into tarefas(tarefa_id, descricao, membro_id) values(
5, 'Testar e validar integração com API externa', 3);

insert into tarefas(tarefa_id, descricao, membro_id) values(
6, 'Implementar melhorias na interface do usuário', 6);


alter table membros add genero char(1);

UPDATE membros set nome = 'Andre Luiz' where membro_id = 1;

update membros set genero = 'M' where membro_id = 1;

update membros set genero = 'M' where membro_id = 2;

alter table tarefas add data_inicio date;

alter table tarefas add data_finalizacao date;

alter table membros
modify column cargo varchar(50);

update tarefas set data_finalizacao = '2024/06/18' where tarefa_id = 1;

update membros set cargo = 'Administrador de Rede Sênior'
where membro_id = 5;

select membros.nome,tarefas.descricao
from membros
inner join tarefas
on membros.membro_id = membros.membro_id;

select 
membros.nome,
membros.cargo,
tarefas.descricao,
tarefas.data_inicio,
tarefas.data_finalizacao
from membros
inner join tarefas
on tarefas.membro_id = membros.membro_id;


SELECT * FROm membros
