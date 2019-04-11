set serveroutput on
BEGIN
  update aluno set media=(nota1+nota2)/2;
    if sql%found then
      dbms_output.put_line ('Alteracao efetuada com sucesso.'||sql%rowcount||' linhas alteradas');
    else
      DBMS_OUTPUT.PUT('nenhum aluno encontrado');
    end if;
END;