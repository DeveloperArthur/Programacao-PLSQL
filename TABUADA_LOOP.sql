set serveroutput on

declare 
  v_num number(10):=&Digite_o_valor;
  v_cont number(10);
  v_i number(10):=1;
  v_f number(10):=10;
begin
  v_cont:=v_i;   
  loop
    dbms_output.put_line(v_num||'x'||v_cont||'='||v_num*v_cont);
    v_cont := v_cont+1;
    if v_cont > 10 then
      exit;
    end if;
  end loop;
end;