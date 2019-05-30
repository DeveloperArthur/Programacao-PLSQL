create or replace function ft_test
(V_ini number, V_fim number)
return varchar2
as
  V_msg varchar2(20);
  V_soma NUMBER(8):=0;
BEGIN
  FOR V_CONTADOR IN v_ini..v_fim
  LOOP
    V_soma := V_soma + V_CONTADOR;
  END LOOP;
  
  IF V_soma > 51 THEN
    V_msg:='maior que 51';
  END if;
  
  IF V_soma < 51 THEN
    V_msg:='menor que 51';
  END IF;
  
  IF V_soma = 51 THEN
    V_msg:='igual a 51';
  END IF;
  
  return V_msg;
END ft_test;

select ft_test (6,11)from dual;