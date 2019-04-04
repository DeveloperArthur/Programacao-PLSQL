set serveroutput on

declare 
  v_inicio number(10):=&inicio;
  v_final number(10):=&final;
begin
   for v_passo in v_inicio..v_final
    loop
      dbms_output.put_line(v_passo);
    end loop;
end;