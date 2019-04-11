/*
Criar a tabela CLIENTE1 com os campos CODIGO, VALOR e ESTADO.
Inserir os registros a seguir:
(1,1000,'SP')
(2,1500,'SP')
(3,1000,'MG')
(4,1500,'MG')
Utilizar PL/SQL com um cursor implícito para conceder desconto de 10% para CODIGO 
a ser informado pelo
usuário (&). OBS: se usuário não encontrado o sistema deverá dar mensagem de erro.

*/
create table CLIENTE1(
  CODIGO NUMBER(4),
  VALOR NUMBER(8,2),
  ESTADO VARCHAR2(2)
);

INSERT INTO CLIENTE1 VALUES (1,1000,'SP');
INSERT INTO CLIENTE1 VALUES (2,1500,'SP');
INSERT INTO CLIENTE1 VALUES (3,1000,'MG');
INSERT INTO CLIENTE1 VALUES (4,1500,'MG');

DECLARE 
  V_CODIGO CLIENTE1.CODIGO%TYPE:=&Informe_codigo; 
BEGIN
  UPDATE CLIENTE1 SET VALOR = VALOR+VALOR*0.10 WHERE CODIGO = V_CODIGO;
  IF SQL%FOUND THEN
    DBMS_OUTPUT.PUT_LINE('ALTERACAO EFETUADA');
  ELSE
    DBMS_OUTPUT.PUT_LINE('NENHUM ALUNO ENCONTRADO');
  END IF;
END;

SELECT * FROM CLIENTE1;