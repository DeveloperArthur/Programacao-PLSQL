/*SUBSELECT*/
select nome
from tb_funcionario
where mat in (select mat 
	       from TB_ATUA
	       where cod in (select cod
		              from TB_PROJETO
		              where nome = 'INTEGRAR' or nome = 'CADUN'
		              ));