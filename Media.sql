/*set serveroutput on*/

DECLARE
    nota1 NUMBER(4,2);
    nota2 NUMBER(4,2);
    media NUMBER(4,2); 
BEGIN
    nota1:= &nota1;
    nota2:= &nota2;
    media:= (nota1+nota2)/2;
    dbms_output.put_line('a media eh ' || media);
END;
