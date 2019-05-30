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