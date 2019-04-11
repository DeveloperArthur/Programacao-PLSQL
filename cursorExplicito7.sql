set serveroutput on
DECLARE
  CURSOR c_cliente IS SELECT nome FROM cliente where estrelas>= 4 order by nome;
  v_nomecli cliente.nome%type;
BEGIN
  OPEN c_cliente;
  LOOP
    FETCH c_cliente INTO v_nomecli;
    EXIT when c_cliente%notfound;
    DBMS_OUTPUT.PUT_LINE('Cliente: '||v_nomecli);
  END LOOP;
  CLOSE c_cliente;
END;
