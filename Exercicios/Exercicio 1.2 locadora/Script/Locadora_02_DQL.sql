SELECT * FROM MARCA
SELECT * FROM EMPRESA
SELECT * FROM CLIENTE
SELECT * FROM MODELO
SELECT * FROM VEICULOS
SELECT * FROM ALUGUEL


--listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro

SELECT idAluguel, nomeCliente, Dataemissao, Datadevolussao, idModelo FROM ALUGUEL
LEFT JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
RIGHT JOIN VEICULOS
ON ALUGUEL.idVeiculos = VEICULOS.idVeiculos

/*LEFT JOIN MODELO
ON ALUGUEL.idModelo = MODELO.idModelo
*/

SELECT idVeiculos, nomeModelo, Placa FROM VEICULOS
LEFT JOIN MODELO
ON VEICULOS.idModelo = MODELO.idModelo
