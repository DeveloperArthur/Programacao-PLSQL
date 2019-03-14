/*set serveroutput on*/

DECLARE
    text VARCHAR2(25);
BEGIN
    text:= 'Hello World';
    dbms_output.put_line (text);
END;


CREATE TABLE ALUNO (
RA NUMBER(5),
NOME VARCHAR2(40));
INSERT INTO ALUNO VALUES (1,'ANTONIO');
INSERT INTO ALUNO VALUES (2,'BEATRIZ');
