DECLARE
  CURSOR C_ALUNO IS
  SELECT NOTA1, NOTA2, CPF FROM ALUNO;
  V_ALUNO C_ALUNO%ROWTYPE;
  V_M NUMBER(4,2);
BEGIN
  OPEN C_ALUNO;
  LOOP
    FETCH C_ALUNO INTO V_ALUNO;
    EXIT WHEN C_ALUNO%NOTFOUND;
    V_M := (V_ALUNO.NOTA1+V_ALUNO.NOTA2)/2;
    UPDATE ALUNO SET MEDIA = V_M WHERE CPF=V_ALUNO.CPF;
  END LOOP;
  CLOSE C_ALUNO;
END;