
Aqui esta todos os codigos iniciados para a criação de duas Stored Procedures no OracleXE21C

Essas Stored Procedures servem básicamente para inserir pârametros de dados em tabelas para produtos e clentes.
Na descrição dos códigos estão alguns comandos como por exemplos:

BEGIN PARAMETROS_CLIENTE(ID, 'O nome do cliente', 'A data de nascimento', 'Número do CPF');  
END;
caso queira confimar a inserção de dados pode consultar com 

SELECT * FROM cliente;

O mesmo deve ocorrer para produto.

BEGIN ESTOQUE_PRODUTO (ID, 'Nome do Produto', 'A quantidade no estoque');
END;

SELECT * FROM produto;

Se quiser checar as informações de ambos;

select cliente.idcliente, cliente.nome, cliente.dtnascimento, cliente.cpf, 
produto.idproduto, produto.descricao, produto.quantidade 
from cliente 
inner join produto
on cliente.idcliente = produto.idproduto

não é necessário especificar condição nem ordenação.

como demostrado acima apenas utilize após o Inner Join das tabelas a ligação das mesma com "ON".
Onde tabela1 segue com seu ID = tabela2 segue com seu ID.


Lembrando que ao criar o comando da Stored Procedure não requer a inserção de declaração pois o 
OracleXE21C cria isso sozinho. Porém há descrição da mesma para caso tenha duvidas ou uma nova ideia.


Caso queira deletar os campos utlize o comando "(DELETE FROM nome_da_tabela WHERE e o Id da mesma = ao número)" 
Não esquecer no final do comando o (;) são muito importante para finalizar a sintax.

Por fim recomendo usar o comando para criar uma procedure da seguinte forma |CREATE OR REPLACE PROCEDURE| 
Isso ajuda a criar ou alterar uma já existente impedindo no caso de ajustes da mesma a criação de varias Procedures.