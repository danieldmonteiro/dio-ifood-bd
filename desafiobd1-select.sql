use ecommerce;


-- Recuperação simples com SELECT Statemnet

select * from clients;

select count(*) from clients;

-- Recuperação com WHERE Statement

select * from clients c, orders o where c.idClient = idOrderClient;

select Fname, Lname, idOrders, ordersStatus from clients c, orders o where c.idClient = idOrderClient;

-- Crie expressões para gerar atributos derivados

select concat(Fname, ' ', Lname) as Client, idOrders as Request, ordersStatus as Status from clients c, orders o where c.idClient = idOrderClient;

-- Defina ordenações dos dados com ORDER BY

select idClient from clients order by idClient desc; 

-- Defina seleções com dados agrupados

select count(*) from clients c, orders o
	where c.idClient = idOrderClient
	group by idOrders;
	

-- Condições de filtros aos grupos – HAVING Statement

SELECT Fname, Pname, count(*) FROM clients, product WHERE Fname = Pname GROUP BY Fname, Pname HAVING COUNT(2) > 1; 


-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

select * from clients left outer join orders ON idClient = idOrderClient;

select * from clients c inner join orders o on c.idClient = o.idOrderClient
	inner join productOrder p on p.idPOorder = o.idOrders;

	
select c.idClient, count(*) as Number_of_orders from clients c inner join orders o on c.idClient = o.idOrderClient
	inner join productOrder p on p.idPOorder = o.idOrders group by idClient;
	
-- Recuperar quantos pedidos foram realizados pelos clientes
	
select c.idClient, Fname, count(*) as Number_of_orders from clients c inner join orders o on c.idClient = o.idOrderClient
	inner join productOrder p on p.idPOorder = o.idOrders group by idClient;
	

