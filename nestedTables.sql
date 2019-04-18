create or replace type tabcpf is table of number(11);

create table funcionario (nome varchar2(20), dep tabcpf)
nested table dep store as dep_int;

insert into funcionario values ('Arthur', tabcpf(1,2,3));

select f.nome, d.column_value from funcionario f, table(f.dep) d;