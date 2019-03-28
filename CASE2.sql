/*
Escreva um bloco PL/SQL que leia dois números inteiros quaisquer e 
compare-os, informando se o primeiro número lido é maior, igual ou menor 
que o segundo número lido. O programa deverá apresentar a mensagem 
*/

DECLARE
    n1 number(1) := &num1;
    n2 number(1):= &num2;
    resultado varchar(10);
BEGIN
    resultado :=
    CASE
        WHEN n1>n2 THEN 'maior'
        WHEN n1=n2 THEN 'igual'
        WHEN n2>n1 THEN 'menor'        
    END;
    DBMS_OUTPUT.PUT_LINE(n1||' eh '||resultado||' a '||n2);
END;
