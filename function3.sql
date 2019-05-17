create or replace function ft_operacao(
  op number, valor1 number, valor2 number
)return number
AS
  res number(10);
BEGIN 
  if op = 1 then
    res := valor1+valor2;
  elsif op = 2 then
    res := valor1 * valor2;
  elsif op = 3 then
    res := valor1/valor2;
  else 
    res := valor1-valor2;
  end if;
return res;
END ft_operacao;

select ft_operacao(1,5,5) from dual;