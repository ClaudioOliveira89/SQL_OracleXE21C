Lingaguem DQL

Códigos para consultas

SELECT cliente.nome,cliente.cpf, pedido.vltotal
FROM cliente INNER JOIN pedido
ON cliente.idcliente = pedido.idcliente
ORDER BY vltotal DESC;

SELECT cliente.nome,cliente.cpf, pedido.vltotal
FROM cliente INNER JOIN pedido
ON cliente.idcliente = pedido.idcliente
WHERE pedido.vltotal = (select max(vltotal) from pedido)
ORDER BY vltotal;

SELECT itempedido.idpedido, itempedido.quantidade, produto.descricao,
produto.idproduto, itempedido.nritem 
FROM itempedido
INNER JOIN Produto
ON itempedido.idpedido = produto.idproduto
WHERE itempedido.nritem = (SELECT MAX(nritem) from itempedido)
ORDER BY quantidade;

SELECT itempedido.idpedido, cliente.nome, itempedido.quantidade, 
itempedido.nritem 
FROM itempedido
INNER JOIN cliente
ON itempedido.idpedido = cliente.idcliente
WHERE itempedido.quantidade = (SELECT MAX(quantidade) from itempedido)
ORDER BY cliente.nome;

--1) Crie um select que exibe o valor gasto por todos os CLIENTES cadastrados. Essa seleção deve exibir além do total gasto (por cliente), o nome e cpf do cliente.

SELECT cliente.nome,cliente.cpf, pedido.vltotal
FROM cliente INNER JOIN pedido
ON cliente.idcliente = pedido.idcliente;

NOME                                         CPF            		VLTOTAL
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
Hugo Batista                                 51898608253     		2590,1
JosÃ© Antonio                                51144722241     		1349,5
Edivaldo Santana                             30609426176    		1400,99
Cristina Oliveira                            56313586700     		2590,1
Adrina Domingues                             22044617250       		1800	
		

--2) Crie um select que exibe quais são os dois CLIENTES que mais gastaram. Essa seleção deve exibir o total gasto (por cliente), o nome e o cpf do cliente.

SELECT cliente.nome,cliente.cpf, pedido.vltotal
FROM cliente INNER JOIN pedido
ON cliente.idcliente = pedido.idcliente
WHERE pedido.vltotal = (select max(vltotal) from pedido);

NOME                                       CPF           		VLTOTAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ----------- --------------------------------------------------------------------------------------
Hugo Batista                               51898608253     		590,1
Cristina Oliveira                          56313586700    	 	2590,1




--3) Crie um select que exibe quais são os três PRODUTOS com a maior quantidade de PEDIDOS. Exiba o nome e o código do produto.

SELECT itempedido.idpedido, itempedido.quantidade, produto.descricao,
produto.idproduto, itempedido.nritem 
FROM itempedido
INNER JOIN Produto
ON itempedido.idpedido = produto.idproduto
WHERE itempedido.nritem = (SELECT MAX(nritem) from itempedido)

IDPEDIDO     QUANTIDADE 	DESCRICAO        		IDPRODUTO   NRITEM
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1          1 		SAMSUNG J7 - PRIME  		1         	2
  2          1 		SAMSUNG J5 - PRIME  		2         	2
  3          1	 	IPHONE X            		3          	2






--4) Crie um select que exibe o nome do cliente que comprou a maior quantidade de ITENS de PEDIDO.

SELECT itempedido.idpedido, cliente.nome, itempedido.quantidade, 
itempedido.nritem 
FROM itempedido
INNER JOIN cliente
ON itempedido.idpedido = cliente.idcliente
WHERE itempedido.quantidade = (SELECT MAX(quantidade) from itempedido)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
IDPEDIDO  	   NOME                    QUANTIDADE                    NRITEM
5	  Cristina Oliveira	      3	                            1
