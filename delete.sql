/*Exercicio 3*/
DECLARE
    v_numero FORNECEDOR.NUMERO%type := &NUMERO_DO_FORNECEDOR;
BEGIN

    delete from fornecedor where NUMERO = v_numero;
    dbms_output.put_line('Fornecedor do numero: '||v_numero||
                         ' foi excluido com sucesso');
END;

