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
