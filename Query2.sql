/*Exercicio 5*/

DECLARE
    v_numeroQuery FORNECEDOR.NUMERO%type := &Digite_numero_a_ser_consultado;
    v_numero FORNECEDOR.NUMERO%type;
    v_nome FORNECEDOR.NOME%type;
    v_end FORNECEDOR.ENDERECO%type;
    v_vendas FORNECEDOR.VALORVENDAS%type;
BEGIN
    select numero, nome, endereco, Valorvendas
    into v_numero, v_nome, v_end, v_vendas
    from FORNECEDOR where NUMERO = v_numeroQuery;
    
    dbms_output.put_line('Busca realizada com sucesso');
    dbms_output.put_line('Nome: '||v_nome||', Numero: '||v_numero||', Valor vendas: '||v_vendas||', Endereco: '||v_end);
END;
