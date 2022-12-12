CREATE OR REPLACE PROCEDURE ESTOQUE_PRODUTO

-- 'O objetivo dessa Stored Procedure é inserir dados na tabela produto'
(
EP_ID IN NUMBER,
EP_DESC IN VARCHAR2,
EP_QUANT IN NUMBER
)

IS

BEGIN

INSERT INTO produto VALUES(EP_ID, EP_DESC, EP_QUANT);
Commit;

END;

Procedimento PL/SQL concluído com sucesso.
____________________________________________________________
-- 'Como ficou a Declaração da Procedure'

DECLARE
  EP_ID NUMBER;
  EP_DESC VARCHAR2(200);
  EP_QUANT NUMBER;
BEGIN
  EP_ID := NULL;
  EP_DESC := NULL;
  EP_QUANT := NULL;

  ESTOQUE_PRODUTO(
    EP_ID => EP_ID,
    EP_DESC => EP_DESC,
    EP_QUANT => EP_QUANT
  );
--rollback; 
END;
____________________________________________________________

-- 'Inserção de dados dentro da Procedure'.

BEGIN ESTOQUE_PRODUTO (11, 'ASUS ROGPHONE6 ', 8);
END;

Procedimento PL/SQL concluído com sucesso.

_____________________________________________________________
-- 'Consulta da tabela após a inserção de dados'.

SELECT * FROM produto;

ID            Descrição                            Quantidade
1	  SAMSUNG J7 - PRIME	               10
2	  SAMSUNG J5 - PRIME	               10
3	  IPHONE X		               10
4	  MOTO G 5S		               10
5	  IPHONE 6S		               10
9	  ONEPLUS 10PRO		   12
6	  SAMSUNG GALAXY S22	               15
7	  APPLE IPHONE 13 MINI	               20
8	  ASUS ZENFONE8		          16
10	  MOTOROLA EDGE30		     15
11	  ASUS ROGPHONE6 		     8
____________________________________________________________
Delete from produto where produto.idproduto =11; 

