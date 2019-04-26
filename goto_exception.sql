/*
2 – Utilizando o programa criado no exercício anterior, 
quando a soma ultrapassar o valor de 1000, então dar a
mensagem Valor maior que 1000 (fazer este exercício criando 
um erro definido pelo usuário).
*/
set serveroutput on
DECLARE
  V_AUX NUMBER(4);
  V_ini number(4) := &ini;
  V_fim number(4) := &fim;
  V_soma number(4):=0;
  ERRO_MIL EXCEPTION;
BEGIN
  V_AUX := V_ini;
  <<INICIO>>
    V_soma := V_soma + V_AUX;
    V_AUX := V_AUX +1;
    IF (V_AUX <= V_fim)THEN
      GOTO INICIO;
    END IF;
    IF(V_soma >= 1000) THEN
      RAISE ERRO_MIL;
    END IF;
    DBMS_OUTPUT.PUT_LINE (V_soma);
  EXCEPTION
  WHEN ERRO_MIL THEN
    DBMS_OUTPUT.PUT_LINE('Valor maior que 1000');
END;