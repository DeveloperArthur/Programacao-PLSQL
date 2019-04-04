set serveroutput on

declare 
  v_inicio number(10):=&inicio;
  v_final number(10):=&final;
  v_passo number(10);
begin
  v_passo:=v_inicio;
  
  while v_passo<=v_final
  loop
    dbms_output.put_line(v_passo);
    v_passo:=v_passo+1;
  end loop;
end;