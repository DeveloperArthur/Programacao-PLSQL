set serveroutput on
DECLARE
  V_RA NUMBER(10) := &RA;
  V_NOME varchar(20) := '&NOME';
BEGIN
  INSERT INTO ALUNO VALUES (V_RA,V_NOME);
  EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('Este RA já foi utilizado');
END;