/*Criar um bloco PL/SQL para atualizar os preços conforme segue 
(utilizar tabela produto – criada por
script1.sql):
• Produtos com CODIGO inferior a 2000: Acrescentar 10% ao VALOR atual.
• Produtos com CODIGO igual ou superior a 2000: Acrescentar 20% ao VALOR atual.
Nota: usar cursor explícito*/

select * from produto;

DECLARE
  CURSOR C_PRODUTO IS
  SELECT CODIGO, VALOR FROM PRODUTO;
  V_VALOR PRODUTO.VALOR%TYPE;
  V_CODIGO PRODUTO.CODIGO%TYPE;
BEGIN
  OPEN C_PRODUTO;
  LOOP
    FETCH C_PRODUTO INTO V_CODIGO, V_VALOR;
    EXIT WHEN C_PRODUTO%NOTFOUND;
    IF  V_CODIGO <  2000 THEN
      UPDATE PRODUTO SET VALOR = VALOR+VALOR*0.10 WHERE CODIGO = V_CODIGO;
    ELSE
      UPDATE PRODUTO SET VALOR = VALOR+VALOR*0.20 WHERE CODIGO = V_CODIGO;
    END IF;
  END LOOP;
  CLOSE C_PRODUTO;
END;