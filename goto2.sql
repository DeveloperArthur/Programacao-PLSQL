set serveroutput on
DECLARE
  V_AUX NUMBER(2) := 0;
  V_CONTADOR NUMBER(2):=1;
BEGIN
  <<INICIO>>
  IF V_CONTADOR>10 THEN
    GOTO FIM;
  END IF;
  V_AUX := V_AUX +1;
  V_CONTADOR:=V_CONTADOR+1;
  DBMS_OUTPUT.PUT_LINE (V_AUX);
  GOTO INICIO;
  <<FIM>>
  NULL;
END;
