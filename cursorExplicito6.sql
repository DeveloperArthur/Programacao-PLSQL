DECLARE
  CURSOR c_cliente IS SELECT codigo, nome FROM cliente;
BEGIN
  FOR v_cliente IN c_cliente
  LOOP
    DBMS_OUTPUT.PUT_LINE('Cliente: '||v_cliente.nome);
  END LOOP;
END;
