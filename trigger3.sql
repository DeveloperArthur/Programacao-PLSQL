CREATE TABLE audit_table (
del number(6), ins number(6),upd number(6));

Insert into audit_table values (0,0,0);
Drop table emp cascade constraints;

Create table emp (
cod number(6), nome varchar2(20));

CREATE OR REPLACE TRIGGER audit_table
BEFORE DELETE OR INSERT OR UPDATE ON emp
BEGIN
  IF DELETING THEN
    UPDATE audit_table SET del = del + 1;
  ELSIF INSERTING THEN
    UPDATE audit_table SET ins = ins + 1;
  ELSIF UPDATING THEN
    UPDATE audit_table SET upd = upd + 1;
  END IF;
END;

Insert into emp values (1, 'leonardo');
Insert into emp values (2, 'ricardo');
Insert into emp values (3, 'jose');
Update emp set nome = 'mane' where cod=1;
Update emp set nome = 'mane' where cod=2;
Delete from emp where cod=3;

select * from audit_table;