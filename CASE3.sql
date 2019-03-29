/*
ACESSAR TABELA FORNECEDOR, CUJO CÓDIGO DEVERÁ SER INFORMADO NA TELA E 
ALTERAR O VALOR DA COMISSÃO, NAS CONDIÇÕES ABAIXO. 
Fazer usando IF-THEN-ELSE e fazer usando CASE. 

Fazer a seguinte atualização na comissão:
Se as vendas forem maiores que 6000 a comissão deverá ser 15% do valor das vendas
Caso contrário  a comissão deverá ser 5% do valor das vendas
No final, dar uma mensagem do valor calculado da comissão.
*/

DECLARE
    v_numero number(1):=&NUMERO;
    v_vendas FORNECEDOR.VALORVENDAS%type;
BEGIN
    update fornecedor
    set FORNECEDOR.VALORCOMISSAO = case
                                   when valorvendas > 6000 then
                                   FORNECEDOR.VALORVENDAS*0.15
                                   when valorvendas <= 6000 then
                                   FORNECEDOR.VALORVENDAS*0.05
    end
    where numero = v_numero;
    dbms_output.put_line('Valor da comissao atualizado para: '||v_vendas);
END;