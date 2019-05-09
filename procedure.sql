CREATE OR REPLACE PROCEDURE conceito
(v_nota IN number, v_conceito OUT VARCHAR2)
IS
BEGIN
  IF V_NOTA <= 7 THEN
    V_CONCEITO := 'REGULAR';
  ELSIF V_NOTA < 9 THEN
    V_CONCEITO := 'BOM';
  ELSE
    V_CONCEITO := 'EXCELENTE';
  END IF;
END conceito;

DECLARE
  v_nota number(9,2):= &nota;
  v_conceito VARCHAR2(12);
BEGIN
  conceito (v_nota,v_conceito);
  Dbms_output.put_line(v_conceito);
END;