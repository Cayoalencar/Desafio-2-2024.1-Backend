USE DetranDB;

-- A) Apresentar todos os dados dos veículos de um determinado proprietário pelo CPF
SELECT * FROM veiculo WHERE fk_proprietario_CPF = '12345678902';

-- B) Consultar proprietário(s) por qualquer parte do nome
SELECT * FROM proprietario WHERE nome LIKE '%Silva%';

-- C) Mostrar os dados da infração e do veículo em um período
SELECT 
    i.*, v.*
FROM infracao i
JOIN veiculo v ON i.fk_veiculo_placa = v.placa
WHERE i.data_hora BETWEEN '2024-02-28'  AND '2026-02-28';

-- D) Pesquisar o número de veículos por modelo, ordenado de forma decrescente
SELECT 
    modelo, COUNT(*) AS total_veiculos
FROM veiculo
GROUP BY modelo
ORDER BY total_veiculos DESC;
