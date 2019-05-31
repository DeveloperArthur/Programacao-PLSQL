/*1. Considere as tabelas abaixo:
CREATE TABLE aluno
(ra varchar2(8),
nota number(4,2),
situacao varchar2(9)
);
CREATE TABLE cadastro_log
(ra varchar2(8),
nota_antigo NUMBER(4,2),
nota_novo NUMBER(4,2),
situacao_antigo varchar2(9),
situacao_novo varchar2(9),
operacao number(1)
);
Criar uma trigger que sempre que se efetuar uma alteração ou uma deleção na tabela aluno, os
dados deverão ser gravados em cadastro_log. OBS: caso seja alteração, gravar 1 no campo
operacao, caso seja deleção gravar 2 no campo operacao.*/

create or replace trigger tg_grava
before update or delete
on aluno
for each row
begin
  if updating then
    INSERT INTO cadastro_log VALUES (:OLD.RA, :OLD.NOTA,:NEW.NOTA,:OLD.SITUACAO,:NEW.SITUACAO,1);
  end if;
  if deleting then
    INSERT INTO cadastro_log VALUES (:OLD.RA, :OLD.NOTA,:NEW.NOTA,:OLD.SITUACAO,:NEW.SITUACAO,2);
  end if;
END;
