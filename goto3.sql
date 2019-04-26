set serveroutput on
DECLARE
  V_AUX NUMBER(4);
  V_ini number(4) := &ini;
  V_fim number(4) := &fim;
  V_soma number(4):=0;
BEGIN
  V_AUX := V_ini;
  <<INICIO>>
    V_soma := V_soma + V_AUX;
    V_AUX := V_AUX +1;
    IF (V_AUX <= V_fim)THEN
      GOTO INICIO;
    END IF;
  DBMS_OUTPUT.PUT_LINE (V_soma);
END;