set serveroutput on

declare 
  v_mult number(3):=&numero;
  v_cont number(3);
begin
  v_cont:=1;
  
  while v_cont <= 10
  loop
    dbms_output.put_line(v_mult ||' x '||v_cont||'='||v_cont*v_mult);
    v_cont:=v_cont+1;
  end  loop;
end;