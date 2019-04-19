/*3 - Crie uma tabela onde seja possível armazenar vários emails 
em tabela aninhada e outra coluna onde seja possível armazenar 
vários telefones em tabela aninhada.*/
create or replace type tabemail is table of varchar(20);
create or replace type tabtel is table of varchar(20);

create table funcionario (nome varchar(20), email tabemail, tel tabtel)
  nested table email store as email_tab
  nested table tel store as tel_tab;

insert into funcionario values ('Arthur', 
                                tabemail('teste@gmail.com','etste2@gmail.com'), 
                                tabtel('9999-8888', '1111-2222'));

select f.nome, e.column_value, t.column_value 
from funcionario f, table(f.email) e, table(f.tel) t;
