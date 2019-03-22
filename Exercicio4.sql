DECLARE
    v_valor FORNECEDOR.VALORVENDAS%type := &Digite_valor_a_ser_aumentado;
    v_estrelas FORNECEDOR.ESTRELAS%type := &Digite_parametro_de_estrelas;
BEGIN
    update fornecedor
    set FORNECEDOR.VALORVENDAS = FORNECEDOR.VALORVENDAS + v_valor
    where fornecedor.ESTRELAS = v_estrelas;
    
    dbms_output.put_line('Valor foi aumentado para + '||v_valor||', nos fornecedores de estrelas iguais a '||v_estrelas);
END;

