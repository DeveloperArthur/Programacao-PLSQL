/*3 - Crie uma tabela onde seja possível armazenar vários emails 
em tabela aninhada e outra coluna onde seja possível armazenar 
vários telefones em tabela aninhada.*/
create or replace type tabemail is table of varchar(20);

create table funcionario (tel varchar(20), email tabemail)
nested table email store as email_tab;

insert into funcionario values ('9999-8888', tabemail('teste@gmail.com'));
insert into funcionario values ('1111-0000', tabemail('teste22@gmail.com'));
insert into funcionario values ('4444-2222', tabemail('teste33@gmail.com'));

select f.tel, d.column_value from funcionario f, table(f.email) d;