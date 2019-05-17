CREATE or REPLACE function ft_compara(
  nota1 number, 
  nota2 number, 
  nota3 number, 
  nota4 number
) return varchar2
AS
  v_media1 number(4,2);
  v_media2 number(4,2);
  dc varchar2(50);
BEGIN
  V_media1 := (nota1+nota2)/2;
  V_media2 := (nota3+nota4)/2;
  IF v_media1>v_media2 THEN
    dc:= 'Aluno1 teve melhor desempenho que Aluno2.';
  END IF;
  
  IF v_media2>v_media1 THEN
    dc:= 'Aluno2 teve melhor desempenho que Aluno1.';
  END IF;
  
  IF v_media1=v_media2 THEN
    dc:= 'Aluno1 e Aluno2 tiveram mesmo desempenho.';
  END IF;
  
  return dc;
END ft_compara;

select ft_compara (1,2,3,4) from dual;