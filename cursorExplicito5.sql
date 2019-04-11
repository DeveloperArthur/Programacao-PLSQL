DECLARE
  CURSOR c_cliente IS SELECT codigo, nome FROM cliente;
  v_cliente c_cliente%rowtype;
BEGIN
  OPEN c_cliente;
  LOOP
    FETCH c_cliente INTO v_cliente;
    EXIT when c_cliente%notfound;
    DBMS_OUTPUT.PUT_LINE('Cliente: '||v_cliente.nome);
  END LOOP;
  CLOSE c_cliente;
END;
