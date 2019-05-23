CREATE OR REPLACE TRIGGER verifica_valor
BEFORE UPDATE OF valor ON produto
FOR EACH ROW

BEGIN
  IF :NEW.VALOR>10 THEN
    :NEW.VALOR:=10;
  END IF;
  
  INSERT INTO valor_produto VALUES (:OLD.codigo, :OLD.valor, :NEW.valor);
END;

update produto set valor = 11;

select * from PRODUTO;