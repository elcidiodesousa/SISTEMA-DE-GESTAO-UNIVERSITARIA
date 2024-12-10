-- Database: gestaoacademica
CREATE DATABASE gestaoacademica;
USE gestaoacademica;

-- Tabela estudantes
CREATE TABLE estudantes (
    cod_estudante INT PRIMARY KEY,
    nome VARCHAR(100),
    nuit INT,
    nome_pai VARCHAR(100),
    nome_mae VARCHAR(100),
    bi VARCHAR(100),
    contato INT,
    residencia VARCHAR(100),
    email VARCHAR(100),
    curso VARCHAR(100), -- Chave estrangeira para tabela curso
    regime VARCHAR(100),
    ano_lectivo INT,
    faculdade VARCHAR(100), -- Chave estrangeira para tabela faculdade
    email_institucional VARCHAR(100),
    num_matricula INT,
    data_nascimento VARCHAR(100),
    status VARCHAR(50) DEFAULT 'Estudante'
);

-- Tabela curso
CREATE TABLE curso (
    nome VARCHAR(100) PRIMARY KEY,
    faculdade VARCHAR(100), -- Chave estrangeira para tabela faculdade
	diretor VARCHAR(100),
    valor DOUBLE,
    duracao VARCHAR(30),
    carga_horaria VARCHAR(50)
);

-- Tabela docentes
CREATE TABLE docentes (
    cod_docente INT PRIMARY KEY,
    nome VARCHAR(100),
    nuit INT,
    nacionalidade VARCHAR(30),
    email VARCHAR(100),
    bi VARCHAR(100),
    contato INT,
    residencia VARCHAR(100),
    carga_horaria VARCHAR(50),
    salario DOUBLE,
    curso VARCHAR(50), -- Chave estrangeira para tabela curso
    faculdade VARCHAR(50), -- Chave estrangeira para tabela faculdade
    email_institucional VARCHAR(100),
    status VARCHAR(50) DEFAULT 'Docente'
);

-- Tabela disciplina
CREATE TABLE disciplina (
    nome VARCHAR(100),
    curso VARCHAR(100), -- Chave estrangeira para tabela curso
    ano VARCHAR(30),
    semestre VARCHAR(50),
    docente VARCHAR(50), -- Chave estrangeira para tabela docentes
    carga VARCHAR(50),
    PRIMARY KEY (nome, curso)
);

-- Tabela inscricao
CREATE TABLE inscricao (
    cod_estudante INT, -- Chave estrangeira para tabela estudantes
    nome VARCHAR(100),
    curso VARCHAR(50), -- Chave estrangeira para tabela curso
    regime VARCHAR(50),
    ano VARCHAR(40),
    semestre VARCHAR(100),
    referencia VARCHAR(100),
    valor DOUBLE,
    disciplinas VARCHAR(255),
    PRIMARY KEY (cod_estudante, curso, ano, semestre)
);

-- Tabela notas
CREATE TABLE notas (
    nome VARCHAR(200), -- Chave estrangeira para tabela estudantes
    disciplina VARCHAR(200), -- Chave estrangeira para tabela disciplina
    semestre VARCHAR(40),
    teste VARCHAR(40),
    docente VARCHAR(50), -- Chave estrangeira para tabela docentes
    nota VARCHAR(30),
    PRIMARY KEY (nome, disciplina, semestre)
);

-- Tabela mensalidades
CREATE TABLE mensalidades (
    nome VARCHAR(100), -- Chave estrangeira para tabela estudantes
    codigo INT PRIMARY KEY,
    curso VARCHAR(100), -- Chave estrangeira para tabela curso
    regime VARCHAR(30),
    ano VARCHAR(10),
    mes VARCHAR(100),
    referencia VARCHAR(100),
    valor DOUBLE,
    funcionario VARCHAR(200), -- Chave estrangeira para tabela funcionarios
    data DATE
);

-- Tabela funcionarios
CREATE TABLE funcionarios (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    usuario VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL
);
