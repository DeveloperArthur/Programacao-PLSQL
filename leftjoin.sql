//LEFT JOIN
select tb_funcionario.nome, tb_departamento.nome
from TB_FUNCIONARIO
left join TB_DEPARTAMENTO
on TB_FUNCIONARIO.COD = TB_DEPARTAMENTO.COD
where tb_funcionario.idade > 30;