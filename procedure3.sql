CREATE OR REPLACE PROCEDURE sp_fatorial
(v_aux in number, V_RES out number)
IS
BEGIN
  V_RES := 1;
  FOR V_CONTADOR IN 1..V_AUX
  LOOP
    V_RES := V_RES * V_CONTADOR;
  END LOOP;
END sp_fatorial;


DECLARE
  v_aux number(2):= &Entrada;
  V_RES number(10);
  v_contador number(10);
BEGIN
  sp_fatorial(v_aux, V_RES);
  DBMS_OUTPUT.PUT_LINE (V_RES);
END;


