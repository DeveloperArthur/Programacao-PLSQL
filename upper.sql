//UPPER
select nome
from tb_funcionario
where upper(NOME)
like '% SILVA' or '% SILVA %' ;