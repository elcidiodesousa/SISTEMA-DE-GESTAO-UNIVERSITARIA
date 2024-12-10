create database gestaoacademica;
use gestaoacademica;

create table estudantes(
cod_estudante INT,
 nome VARCHAR(100), 
 nuit INT, 
 nome_pai VARCHAR(100), 
 nome_mae VARCHAR(100), 
 bi VARCHAR(100), 
 contato INT,
 residencia VARCHAR(100), 
 email VARCHAR(100), 
 curso VARCHAR(100), 
 regime VARCHAR(100), 
 ano_lectivo INT,
 faculdade VARCHAR(100), 
 email_institucional VARCHAR(100), 
 num_matricula INT, 
 data_nascimento VARCHAR(100),
  status varchar(50) default 'Estudante'
);

SELECT * FROM estudantes;

create table curso(
nome VARCHAR(100), 
faculdade VARCHAR(100), 
dirctor VARCHAR(100),
valor DOUBLE,
duracao VARCHAR(30),
carga_horaria VARCHAR(50)
);


create table disciplina(
nome VARCHAR(100),
 curso VARCHAR(100),
 ano VARCHAR(30),
 semestre VARCHAR(50),
 docente VARCHAR(50),
 carga VARCHAR(50)
 );
 
 SELECT * FROM Docentes;
 create table docentes (
 cod_docente int,
 nome VARCHAR(100),
 nuit INT,
 nacionalidade VARCHAR(30),
 email VARCHAR (100),
 bi VARCHAR (100),
 contato INT,
 residencia VARCHAR (100), 
 carga_horaria VARCHAR(50),
 salario DOUBLE,
 curso VARCHAR(50),
 faculdade VARCHAR (50),
 email_institucional VARCHAR (100),
 status varchar(50) default 'Docente'
 );

create table inscricao(
cod_estudante int,
 nome Varchar (100),
 curso varchar(50),
 regime varchar (50),
 ano varchar(40),
 semestre varchar (100),
 referencia varchar (100),
 valor double,
 disciplinas varchar(255)
 );

  select * from notas;
  
  
  create table notas(
  nome varchar(200), 
  disciplina varchar(200),
  semestre varchar(40),
  teste varchar(40), 
  docente varchar(50),
  nota varchar(30)
  );
  
 
 SELECT * FROM MENSALIDADES;
 create table mensalidades(
 nome varchar(100),
 codigo int,
 curso varchar(100),
 regime varchar(30),
 ano varchar(10),
 mes varchar(100),
 referencia varchar(100),
 valor double,
 funcionario varchar(200),
 data varchar(1000)
 );
 
 select * from doce;
 CREATE TABLE funcionarios (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT, -- ID único para o funcionário
    nome VARCHAR(100) NOT NULL, -- Nome do funcionário
    email VARCHAR(100) NOT NULL UNIQUE, -- Email do funcionário
    telefone VARCHAR(15), -- Telefone do funcionário
    usuario VARCHAR(50) NOT NULL UNIQUE, -- Nome de usuário para o acesso ao sistema
    senha VARCHAR(255) NOT NULL, -- Senha para acesso ao sistema
    status VARCHAR(255) NOT NULL
);
