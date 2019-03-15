/*Programa que calcula o valor do novo salario minimo com mais 8%*/

/*set serveroutput on*/

DECLARE
    salario constant NUMBER(5,2) := 500.00;
    salario_novo NUMBER(5,2);
BEGIN
     salario_novo := salario + salario * 0.08;
      dbms_output.put_line('Salario novo: '||salario_novo);
END;
