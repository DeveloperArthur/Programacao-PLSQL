/*Programa que retorna o nome do Aluno 
de acordo com o RA que o usuario fornece*/

/*set serveroutput on*/

CREATE TABLE ALUNO (
RA NUMBER(5),
NOME VARCHAR2(40));
INSERT INTO ALUNO VALUES (1,'ANTONIO');
INSERT INTO ALUNO VALUES (2,'BEATRIZ');

DECLARE
    v_ra aluno.ra%type;
    v_nome aluno.nome%type;
BEGIN
    v_ra := &RA_DO_ALUNO;
    
    select nome, ra 
    into v_nome, v_ra 
    from aluno where ra = v_ra;
    
    dbms_output.put_line('Aluno: ' || v_nome || '| RA: ' || v_ra);
END;
