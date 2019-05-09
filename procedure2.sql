/*criando a procedure*/
CREATE or REPLACE procedure proc_calcmedia
(nota1 number, nota2 number, media out varchar2)
AS
BEGIN
  media:= (nota1+nota2)/2;
END proc_calcmedia;

DECLARE
  v_media number(4,2);
  v_nota1 number(4,2):=&nota1;
  v_nota2 number(4,2):=&nota2;
BEGIN
  proc_calcmedia(v_nota1, v_nota2, v_media);
  Dbms_output.put_line(v_media);
END;