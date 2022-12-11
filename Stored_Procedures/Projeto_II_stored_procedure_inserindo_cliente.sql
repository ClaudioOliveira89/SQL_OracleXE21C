CREATE OR REPLACE PROCEDURE PARAMETROS_CLIENTE

-- 'O objetivo dessa Stored Procedure é inserir dados na tabela cliente'.

(
P_ID in number,
P_NOME in varchar2,
P_DTNS in date,
P_CPF in varchar2
)
IS 

BEGIN

INSERT INTO cliente

VALUES (P_ID, P_NOME, P_DTNS, P_CPF);
COMMIT;

END;


Procedure PARAMETROS_CLIENTE compilado
_______________________________________________________________________________

-- 'Como ficou a Declaração'.

DECLARE
  P_ID NUMBER;
  P_NOME VARCHAR2(200);
  P_DTNS DATE;
  P_CPF VARCHAR2(200);
BEGIN
  P_ID := NULL;
  P_NOME := NULL;
  P_DTNS := NULL;
  P_CPF := NULL;

  PARAMETROS_CLIENTE(
    P_ID => P_ID,
    P_NOME => P_NOME,
    P_DTNS => P_DTNS,
    P_CPF => P_CPF
  );
--rollback; 
END;
_______________________________________________________________________________

-- 'Inserindo dados na tabela cliente'.

BEGIN PARAMETROS_CLIENTE(11, 'Aghata Cristina', '30/10/90', '88599742638');  
END;

Procedure PARAMETROS_CLIENTE compilado
_______________________________________________________________________________

__ ' Como ficou a consulta após a inserção na Procedure'.


Select * from cliente;


--ID     Nome             Datanascimento           CPF
1	     Hugo Batista		  05/02/90	  51898608253
2	     JosÃ© Antonio		  02/05/85	  51144722241
3	     JoÃ£o Carlos		  03/05/93	  84882273292
4	     Edivaldo Santana	              01/06/00	  30609426176
5	     Cristina Oliveira	              16/08/99	  56313586700
6	     Artur da Silva		  06/05/01	  67491246583
7	     Adrina Domingues	              01/02/72	  22044617250
8	     Amanda Silva		  02/02/88	  34778798201
9	     Denis Soares		  14/10/72	  35423788102
10	     Pedro Algusto		  21/10/82	  35477141002
11	     Aghata Cristina		  30/10/90	  88599742638



