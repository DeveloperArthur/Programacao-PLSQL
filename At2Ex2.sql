/*2 - Crie uma tabela index-by onde ao informar a sigla do estado, 
retornará o nome do estado. Se eu digitar como sigla do estado o 
valor XX, listar todos os estados. Trabalhar somente com estados
da região Sudeste (SP, MG, RJ e ES).*/
set serveroutput on
DECLARE
  type estados is table of varchar(20) index by varchar(20);
  v_estados estados;
  sigla varchar(20):='&sigla';
  nome varchar(10);
BEGIN
    v_estados('SP'):='Sao Paulo';
    v_estados('MG'):='Minas Gerais';
    v_estados('RJ'):='Rio de Janeiro';
    v_estados('ES'):='Espirito Santo';
  if sigla <> 'XX' then
    dbms_output.put_line(v_estados(sigla));
  else
    nome:=v_estados.first;
    while nome is not null
    loop
      dbms_output.put_line(nome);
      nome:=v_estados.next(nome);
    end loop;
  end if;
END;