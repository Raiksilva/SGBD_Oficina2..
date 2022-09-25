use Oficina2;

-- 1 Quais mecânicos integram a equipe 1?
-- 2 Lista de clientes com as localidades
-- 3 Quais licenças são da avaliação 3 e 4?
-- 4 Qual a licença e cor do carro do Cliente 1?
-- 5 Qual cliente e modelo de carro é referente à avaliação 3?
-- 6 Qual a cidade do cliente que pediu a avaliação 2?
-- 7 Qual a cor do carro da avaliação 4?

SELECT * FROM veiculo;

select * from cliente;
 
SELECT * FROM mecanico;

-- 1
SELECT * FROM mecanico where id_equipe = 1;

-- 2
select concat(Nome, ' ', Sobrenome) as Nome_completo, UF, Cidade  from CLIENTE;

-- 3
Select VEICULO_Licenca from AVALIA_EXECUTA where idAvaliacao > 2; 

-- 4 
Select concat(Nome, ' ', Sobrenome) as Nome_completo, Cidade, UF, Modelo, Cor, VEICULO_Licenca, CLIENTE_idCliente 
FROM CLIENTE AS C cross Join VEICULO AS V cross join POSSUI AS P 
ON P.VEICULO_Licenca = V.Licenca and C.idCliente = P.CLIENTE_idCliente;

-- 5
-- 6
-- 7
Select concat(Nome, ' ', Sobrenome) as Nome_completo, Cidade, UF, Modelo, Cor, Licenca  , CLIENTE_idCliente, idAvaliacao 
FROM CLIENTE AS C cross Join VEICULO AS V cross join POSSUI AS P cross join AVALIA_EXECUTA AS A
ON P.VEICULO_Licenca = V.Licenca and V.Licenca = A.VEICULO_Licenca and C.idCliente = P.CLIENTE_idCliente
order by Nome_completo;
