CREATE DATABASE aquatech;

USE aquatech;

CREATE TABLE empresa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	razao_social VARCHAR(50),
	cnpj CHAR(14),
	codigo_ativacao VARCHAR(50)
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fk_empresa INT,
	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300),
	fk_empresa INT,
	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);

insert into empresa (razao_social, codigo_ativacao) values ('Empresa 1', 'ED145B');
insert into empresa (razao_social, codigo_ativacao) values ('Empresa 2', 'A1B2C3');
insert into aquario (descricao, fk_empresa) values ('Aquário de Estrela-do-mar', 1);
insert into aquario (descricao, fk_empresa) values ('Aquário de Peixe-dourado', 2);







  create table Jokenpo(
 idJokenpo int primary key auto_increment
 );
 
  create table usuario_quiz(
 fkUsuario int,
 fkQuiz int,
 primary key (fkUsuario, fkQuiz),
 foreign key (fkUsuario) references usuario(id),
 foreign key (fkQuiz) references Quiz(idQuiz)
 );
 
  create table usuario_jokenpo(
 fkUsuario int,
 fkjokenpo int,
 primary key (fkUsuario, fkJokenpo),
 foreign key (fkUsuario) references usuario(id),
 foreign key (fkjokenpo) references Jokenpo(idJokenpo)
 );
 
 select * from usuario;
 
 select id,nome,email,senha from usuario;
 
use aquatech;
 alter table Quiz add column qtdAcertos int;
 alter table Quiz add column qtdErros int;
 
 alter table Jokenpo add column qtdAcertos int;
 alter table Jokenpo add column qtdErros int;
 
 describe Quiz;
 
 select * from usuario;
 select * from Quiz;
 
 alter table Quiz rename column idQuiz to idPergunta;
 
 
 describe usuario_quiz;
 
   
