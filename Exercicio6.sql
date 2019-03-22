DECLARE
    v_numeroQuery FORNECEDOR.NUMERO%type := &Digite_numero_a_ser_consultado;
    v_forn fornecedor%rowtype;
BEGIN
    select numero, nome, endereco, Valorvendas
    into v_forn.numero, v_forn.nome, v_forn.endereco, v_forn.valorvendas
    from FORNECEDOR where NUMERO = v_numeroQuery;
    
    dbms_output.put_line('Busca realizada com sucesso');
    dbms_output.put_line('Nome: '||v_forn.nome||', Numero: '||v_forn.numero||', Valor vendas: '||v_forn.valorvendas||', Endereco: '||v_forn.endereco);
END;