CREATE OR REPLACE PROCEDURE RETORNA_DADOS_CLIENTE (codigo cliente.idcliente%type)

AS
    nm_cliente cliente.nome%type;
    dn_cliente cliente.dtnascimento%type;
    cpf_cliente cliente.cpf%type;

    CURSOR D_CLIENTE IS
    SELECT cliente.nome, cliente.dtnascimento, cliente.cpf
    FROM cliente
    WHERE cliente.idcliente = codigo;

BEGIN
    open D_CLIENTE;
    loop
        fetch D_CLIENTE into nm_cliente, dn_cliente, cpf_cliente;
        exit when D_CLIENTE%notfound;
    
    DBMS_OUTPUT.PUT_LINE ('O nome do cliente de código ' || codigo || ' é ' || nm_cliente);
    DBMS_OUTPUT.PUT_LINE ('______________________________________________________________________________|');
    DBMS_OUTPUT.PUT_LINE ('A data de nascimento do cliente de código ' || codigo || ' é ' || dn_cliente);
    DBMS_OUTPUT.PUT_LINE ('______________________________________________________________________________|');
    DBMS_OUTPUT.PUT_LINE ('O CPF do cliente de código ' || codigo || ' é ' || cpf_cliente);
    DBMS_OUTPUT.PUT_LINE ('______________________________________________________________________________|');
    end loop;
    close D_CLIENTE;
END;