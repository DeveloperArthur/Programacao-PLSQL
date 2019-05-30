/*3. Construa uma procedure que tenha 3 parâmetros numéricos como entrada, representando
tres notas do aluno (AV1, AV2 e AV3).
O programa deverá calcular media aritmética considerando AV1, AV2 e AV3. Caso media seja igual
ou superior a 6 retornar APROVADO caso contrário retornar REPROVADO.
OBS: não usar DBMS_OUTPUT dentro da procedure.*/

CREATE OR REPLACE PROCEDURE pc_media
(v_n1 IN number,v_n2 IN number,v_n3 IN number, v_res OUT VARCHAR2)
IS
media number(9,2):= ((v_n1+v_n2+v_n3)/3);
BEGIN

  IF media >= 6 THEN
    v_res := 'APROVADO';
  ELSE 
    v_res := 'REPROVADO';
  END IF;
END pc_media;

DECLARE
  v_n1 number(9,2):= &nota1;
  v_n2 number(9,2):= &nota2;
  v_n3 number(9,2):= &nota3;
  v_res VARCHAR2(12);
BEGIN
  pc_media (v_n1,v_n2,v_n3,v_res);
  Dbms_output.put_line(v_res);
END;
