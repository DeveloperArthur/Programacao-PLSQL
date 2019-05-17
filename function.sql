set serveroutput on

CREATE or REPLACE function ft_calcmedia(
  nota1 number, nota2 number
) return number
AS
  media number(10,2);
BEGIN
  media:=(nota1+nota2)/2;
  return media;
END ft_calcmedia;

select ft_calcmedia(8,5) from dual;
select ft_calcmedia(7,5) from dual;
select ft_calcmedia(8.5,9) from dual;
/*alterar todos os campos usando update e funcao
update aluno set media = ft_calcmedia(nota1, nota2);*/




