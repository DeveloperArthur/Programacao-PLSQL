/*
Criar um bloco PL/SQL para preencher a coluna resultado conforme o seguinte:
Se o aluno obteve média igual ou maior que 7.0 e suas faltas não ultrapassarem 25%
da carga horária da disciplina o resultado será: APROVADO.
Se o aluno obteve média inferior a 7.0 e suas faltas não ultrapassarem 25% da carga
horária da disciplina o resultado será: EXAME.
Para demais casos o resultado será: REPROVADO.
*/
BEGIN
    update aluno
    set aluno.RESULTADO = case
                          when media >= 7 and FALTAS/carga_hora <= 0.25 then
                          'APROVADO'
                          when media < 7 and FALTAS/carga_hora <= 0.25 then
                          'EXAME'
                          ELSE 'REPROVADO'
    end;
END;


