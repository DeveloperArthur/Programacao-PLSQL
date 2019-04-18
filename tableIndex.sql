set serveroutput on
DECLARE
TYPE tipoPop IS TABLE OF NUMBER(10) INDEX BY VARCHAR2(64);
  cidade tipoPop;
  qtde NUMBER;
  nome VARCHAR2(64);
BEGIN
  cidade('Monte Alegre do Sul') := 5000;
  cidade('Sao Caetano') := 60000;
  cidade('Amparo') := 50000;
  cidade('Sao Paulo') := 1000000;
  dbms_output.put_line(cidade('&cidade'));
END;