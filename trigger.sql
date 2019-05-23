CREATE TABLE produto
(codigo NUMBER(4),
valor NUMBER(7,2));

CREATE TABLE valor_produto
(codigo NUMBER(4),
valor_anterior NUMBER(7,2),
valor_novo NUMBER(7,2));

CREATE OR REPLACE TRIGGER verifica_valor
/*trigger executa quando for feito um update*/
BEFORE UPDATE
OF valor
ON produto
/*for each row = rodar em quantas linhas forem possiveis*/
FOR EACH ROW

BEGIN
  /*OLD = antes do update / NEW = depois do update*/
  INSERT INTO valor_produto VALUES (:OLD.codigo, :OLD.valor, :NEW.valor);
END;

/*
INSERT INTO produto VALUES (1,2.5);
INSERT INTO produto VALUES (2,3.2);
INSERT INTO produto VALUES (3,5.8);
*/

UPDATE produto SET valor = 5.4 WHERE codigo = 3;

SELECT * FROM valor_produto;