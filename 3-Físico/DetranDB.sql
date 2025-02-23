CREATE DATABASE DetranDB;
USE DetranDB;

CREATE TABLE proprietario (
    CPF CHAR (11) PRIMARY KEY,
    nome VARCHAR (100),
    sexo VARCHAR (50),
    dataNascimento DATE,
    idade INT ,
    estado VARCHAR (50),
    cidade VARCHAR (50),
    bairro VARCHAR (50)
);

CREATE TABLE veiculo (
    placa VARCHAR (7) PRIMARY KEY,
    chassi VARCHAR (17),
    corPredominante VARCHAR (50),
    modelo INT (6),
    categoria INT (2),
    fk_proprietario_CPF CHAR (11)
);

CREATE TABLE infracao (
    valor DECIMAL(10,2),
    velociade_aferida DECIMAL (5,2),
    infracao_TIPO INT,
    data_hora TIMESTAMP,
    codigo_infracao INT,
    fk_veiculo_placa VARCHAR (7),
    fk_local_idLocal INT,
    fk_agente_matricula INT
);

CREATE TABLE local (
    velocidade_permitida DECIMAL (5,2),
    posicao_georgrafica POINT,
    idLocal INT PRIMARY KEY
);

CREATE TABLE agente (
    tempo_de_servico INT,
    nome VARCHAR (100),
    data_de_contratacao DATE,
    matricula INT PRIMARY KEY
);
 
ALTER TABLE veiculo ADD CONSTRAINT FK_veiculo_2
    FOREIGN KEY (fk_proprietario_CPF)
    REFERENCES proprietario (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE infracao ADD CONSTRAINT FK_infracao_1
    FOREIGN KEY (fk_veiculo_placa)
    REFERENCES veiculo (placa)
    ON DELETE CASCADE;
 
ALTER TABLE infracao ADD CONSTRAINT FK_infracao_2
    FOREIGN KEY (fk_local_idLocal)
    REFERENCES local (idLocal)
    ON DELETE CASCADE;
 
ALTER TABLE infracao ADD CONSTRAINT FK_infracao_3
    FOREIGN KEY (fk_agente_matricula)
    REFERENCES agente (matricula)
    ON DELETE CASCADE;