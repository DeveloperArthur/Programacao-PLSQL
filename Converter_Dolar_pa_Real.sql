/*Programa para converter DOLAR em REAL*/

/*set serveroutput on*/

DECLARE
    dolar NUMBER(5,2);
    cambio NUMBER(5,2);
    reais NUMBER(5,2);
BEGIN
    dolar := &Digite_o_valor_em_dolar;
    cambio := &Digite_o_cambio;
    reais := cambio/dolar;
    dbms_output.put_line('O valor convertido eh: '||reais);
END;