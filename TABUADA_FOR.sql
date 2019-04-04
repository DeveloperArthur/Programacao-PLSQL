set serveroutput on

declare 
  v_num number(10);
  v_i number(10):=1;
  v_f number(10):=10;
begin
   v_num:=&Digite_o_valor;
   
   for v_x in v_i..v_f
   loop
    dbms_output.put_line(v_num||'x'||v_x||'='||v_num*v_x);
   end loop;
end;