set serveroutput on
DECLARE
  type vetor is varray(10) of number(2);
  v_vetor vetor;
BEGIN
  v_vetor:=vetor(1,3,5,7,9,11,13,15,17,19);
  /*digite um numero e aparecerá na tela a posicao que corresponde*/
  DBMS_OUTPUT.put_line(v_vetor(&posicao));
END;
