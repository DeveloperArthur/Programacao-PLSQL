/*1 - Faça um bloco PL/SQL onde informado o número do mês 
retorne o mês em seu formato literal.
Ex: se o usuário digitar 3, retorna Março, 
se o usuário digitar 5 retorna maio.*/
set serveroutput on
DECLARE
  type meses is varray(12) of varchar(10);
  v_meses meses;
BEGIN
  v_meses:=meses('JANEIRO', 'FEVEREIRO', 'MARÇO', 
                 'ABRIL', 'MAIO', 'JUNHO', 'JULHO', 
                 'AGOSTO', 'SETEMBRO', 'OUTUBRO', 
                 'NOVEMBRO', 'DEZEMBRO');
  dbms_output.put_line(v_meses(&mes));
END;