set serveroutput on
declare
  type tmatriz is varray(5) of number(10);
  v_nome tmatriz;
begin
  v_nome:=tmatriz(10,20);
  v_nome.extend(3);
  v_nome(3):=30;
  v_nome(4):=40;
  v_nome(5):=50;
  dbms_output.put_line(v_nome(&posicao));
end;