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