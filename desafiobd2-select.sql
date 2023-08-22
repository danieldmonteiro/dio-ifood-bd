USE oficina;

-- Recuperação simples de todos os clientes

SELECT * FROM Clientes;

-- Recuperação de ordens de serviço para um cliente específico

SELECT * FROM OrdemServiço WHERE idOSC = 1;

-- Recuperação do total gasto por cada cliente

SELECT c.Nome, SUM(os.PreçoTotal) AS TotalGasto
FROM Clientes c
JOIN OrdemServiço os ON c.idCliente = os.idOSC
GROUP BY c.Nome;

-- Recuperação de serviços realizados em cada ordem de serviço

SELECT os.idOS, s.Nome AS ServiçoRealizado
FROM OrdemServiço os
JOIN Serviços s ON os.idOSS = s.idServiços;

-- Recuperação dos clientes que realizaram serviços com valor superior a 100 reais

SELECT c.Nome
FROM Clientes c
JOIN OrdemServiço os ON c.idCliente = os.idOSC
WHERE os.PreçoTotal > 100.00;

-- Defina ordenações dos dados com ORDER BY

SELECT idCliente FROM Clientes ORDER BY idCliente DESC; 
	

-- Condições de filtros aos grupos – HAVING Statement

SELECT c.Nome, SUM(os.PreçoTotal) AS TotalGasto
FROM Clientes c
JOIN OrdemServiço os ON c.idCliente = os.idOSC
GROUP BY c.Nome HAVING SUM(os.PreçoTotal) > 100.00;

