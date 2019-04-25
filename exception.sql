set serveroutput on
DECLARE
  v_ra NUMBER(10);
  v_nome varchar(20);
BEGIN
  select ra, nome into v_ra, v_nome from aluno where ra = '&ra';
  dbms_output.put_line('v_ra||'-'||v_nome');
EXCEPTION
  when no_data_found then 
    dbms_output.put_line('ERRO: Nenhum aluno cadastrado com esse RA');
  when too_many_rows then 
    dbms_output.put_line('ERRO: Ha mais de um aluno com RA informado');
  when others then 
    dbms_output.put_line('ERRO DESCONHECIDO');
END;


