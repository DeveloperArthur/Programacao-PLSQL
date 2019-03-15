/*Programa para converter REAL em DOLAR*/

/*set serveroutput on*/

DECLARE
    dolar constant NUMBER(5,2) := 2.03;
    reais constant NUMBER(5,2) := 45;
    total NUMBER(5,2);
BEGIN
    total := reais * dolar;
    dbms_output.put_line('O valor convertido eh: '||total);
END;
