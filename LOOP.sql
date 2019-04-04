set serveroutput on

declare 
  v_inicio number(10):=&inicio;
  v_final number(10):=&final;
  v_passo number(10);
begin
   v_passo:=v_inicio;
   
   loop
    dbms_output.put_line(v_passo);
    v_passo:=v_passo+1;
      if v_passo > v_final then
        exit;
      end if;
    end loop;
end;