/*Exercicio 2*/
desc fornecedor;
select * from fornecedor;
DECLARE
    v_num FORNECEDOR.NUMERO%type := &NUMERO_DO_FORNECEDOR;
    v_nome FORNECEDOR.NOME%type := '&NOME_DO_FORNECEDOR'; 
    v_end FORNECEDOR.ENDERECO%type := '&ENDERECO_DO_FORNECEDOR';
    v_cpf FORNECEDOR.CPF%type := &CPF_DO_CPF;
    v_star FORNECEDOR.ESTRELAS%type := '&ESTRELAS_DO_FORNECEDOR';
    v_vendas FORNECEDOR.VALORVENDAS%type := &VENDAS_DO_FORNECEDOR;
    v_comissao FORNECEDOR.VALORCOMISSAO%type := &COMISSOES_DO_FORNECEDOR;
BEGIN
    insert into fornecedor values (v_num, v_nome, 
                                   v_end, v_cpf, 
                                   v_star, v_vendas, 
                                   v_comissao, null, null);
    
END;
