USE DetranDB;

-- proprietários
INSERT INTO proprietario (CPF, nome, sexo, dataNascimento, idade, estado, cidade, bairro) VALUES
('12345678902', 'Carlos Silva', 'Masculino', '1980-05-15', 44, 'São Paulo', 'São Paulo', 'Centro'),
('23456789014', 'Ana Souza', 'Feminino', '1992-08-21', 32, 'Rio de Janeiro', 'Rio de Janeiro', 'Copacabana'),
('34567890125', 'João Pereira', 'Masculino', '1975-11-10', 49, 'Minas Gerais', 'Belo Horizonte', 'Savassi'),
('45678901238', 'Mariana Lima', 'Feminino', '1988-03-25', 36, 'Paraná', 'Curitiba', 'Batel'),
('56789012340', 'Fernando Costa', 'Masculino', '1995-07-12', 29, 'Bahia', 'Salvador', 'Barra');

-- veículos
INSERT INTO veiculo (placa, chassi, corPredominante, modelo, categoria, fk_proprietario_CPF) VALUES
('ABC1232', '1HGCM82633A123456', 'Preto', 1001, 1, '12345678902'),
('DEF5675', '1HGCM82633A654321', 'Branco', 1002, 1, '23456789014'),
('GHI9018', '2HGCM82633A123789', 'Vermelho', 1003, 2, '34567890125'),
('JKL3450', '3HGCM82633A987654', 'Azul', 1001, 1, '45678901238'),
('MNO7891', '4HGCM82633A456321', 'Prata', 1002, 2, '56789012340');

-- Inserindo locais
INSERT INTO local (idLocal, velocidade_permitida, posicao_georgrafica) VALUES
(1, 60.00, POINT(40.6128, -73.0060)),
(2, 80.00, POINT(34.0521, -110.2437)),
(3, 50.00, POINT(-23.5504, -46.6323)),
(4, 70.00, POINT(-15.7801, -47.9212)),
(5, 100.00, POINT(-22.1068, -43.1229));

-- agentes
INSERT INTO agente (matricula, nome, tempo_de_servico, data_de_contratacao) VALUES
(101, 'Roberto Almeido', 15, '2010-06-10'),
(102, 'Juliana Mendex', 10, '2015-09-15'),
(103, 'Pedro Henri', 5, '2020-01-20'),
(104, 'Fernanda Roca', 8, '2017-11-05'),
(105, 'Carlos veira', 12, '2012-08-08');

-- infrações
INSERT INTO infracao (valor, velociade_aferida, infracao_TIPO, data_hora, codigo_infracao, fk_veiculo_placa, fk_local_idLocal, fk_agente_matricula) VALUES
(200.00, 75.00, 1, '2024-02-01 08:30:00', 23,'ABC1232', 1, 101),
(350.00, 90.00, 2, '2025-01-01 08:30:00', 45,  'DEF5675', 2, 102),
(150.00, 55.00, 3, '2024-05-01 08:30:00', 56, 'GHI9018', 3, 103),
(400.00, 110.00, 1, '2024-08-01 08:30:00', 78, 'JKL3450', 4, 104),
(250.00, 85.00, 2, '2025-02-01 08:30:00', 90, 'MNO7891', 5, 105);
