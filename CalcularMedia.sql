DECLARE
    nota1 number(4,2);
    nota2 number(4,2);
    media number(4,2);
    
BEGIN
    nota1 := &nota1;
    nota2 := &nota2;
    media := (nota1+nota2)/2;
    dbms_output.put_line('a media eh' || media);
END;