/*Programa que calcula o valor do novo salario minimo com mais 10%*/

/*set serveroutput on*/

DECLARE
    salario NUMBER(5,2);
    salario_novo NUMBER(5,2);
BEGIN
     salario:=&Digite_seu_salario;
     salario_novo := salario + salario * 0.1;
     dbms_output.put_line('Salario novo: '||salario_novo);
END;