use oficina2;
SHOW TABLES;
desc CLIENTE;

Insert INTO CLIENTE (Nome, Sobrenome, Telefone, CPF_CNPJ, Cidade, UF)
    Values ('Mateus', 'Silva', 45854567, 2198514794, 'Caruaru', 'PE'),
		   ('Maia', 'Miranda', 12874678, 3694999824, 'Recife', 'PE'),
			('João', 'Fálvio', 32184895, 4654887891, 'Caruaru', 'PE'),
			('Mario', 'Mônaco', 42168488, 9178458413, 'Gravatar', 'PE');
   
    SELECT * from CLIENTE;
    
Insert INTO VEICULO (Licenca, Modelo, Ano, Placa, Cor )
    Values (4654894, 'Fiat Uno', 2021, 'MAJ4894', 'Verde piscina'),
		(97844874, 'Chevrolet classic', 2014, 'ADS44874', 'Marrom'),
        (1247984, 'chevrolet celta', 2013, 'DJS7984', 'Preto'),
        (97487497, 'Volkswagen Tarek', 2019, 'MAS87497', 'Vermelho');
   
    SELECT * from VEICULO;
    
Insert INTO POSSUI (VEICULO_Licenca, CLIENTE_idCliente )
    Values (4654894, 4 ),
		(97844874, 2),
        (1247984, 3),
        (97487497, 1);
   
    SELECT * from POSSUI;
    
Insert INTO MECANICO (Nome_completo, Endereco, Especialidade, id_Equipe)
    Values ('Francisco Monteiro', 'Rua Pedro Campeiro', 'Direção', 1),
			('José Silva', 'Av Rio branco' , 'Câmbio', 2),
            ('Ivan Alves', 'Rua 16 de novembro', ' Eletrônica embarcada', 1),
            ('Marcos Pereira', 'Rua Da Foice', 'Cabeçote', 1),
            ('Manoel Menezes', 'Alameda Cavalgante', 'Funilaria', 2),
            ('Luan Souza', 'Rua dos Doces', 'Elétrica', 2),
            ('Valdecir Gil', 'Av Paris', 'Motor', 2);
    
   
    SELECT * from MECANICO;

Insert INTO PECAS (Nome_peca, Valor)
    Values('Carburador' , 350),
		('Rádio' , 190),
        ('Suspensão' , 150),
        ('Volante' , 500),
        ('Bateria', 450),
        ('Cooler' , 480),
        ('Radiador', 150);
		
 SELECT * from PECAS;  
 
 Insert INTO SERVICOS (Nome_servico, Valor, Tempo)
  Values('Troca de óleo', 90, 2),
		('Troca de pastilhas de freios' , 150, 1),
        ('Alinhamento', 420, 2),
        ('Limpeza de cabeçotes', 450, 3),
        ('Retífica de cabeçote', 440, 4),
        ('Limpeza de tubulação', 480, 1);
        
SELECT * from SERVICOS; 

Insert INTO AVALIA_EXECUTA(VEICULO_Licenca, MECANICO_idEquipe)
values (4654894, 2), 
	   (97487497, 2),
       (1247984, 1),
       (97844874, 2);
       
SELECT * from AVALIA_EXECUTA;
-- delete from ORDEM_SERVICO where idOrdem in (6,7,8,9); 
Insert INTO ORDEM_SERVICO(CLIENTE_idCliente, SERVICOS_idServico,  AVALIA_EXECUTA_idAvaliacao, SERVICOS_Tempo, PECAS_idPeca, Valor,Data_entrega)
values (4, 6, 3, default, 5, 880, '2022-10-01'),
		(2, 8, 6, default, 6, 850, '2022-09-3'),
        (1, 7, 4, default, 10, 880, '2022-10-02'),
        (3, 9, 5, default, 9, 940, '2022-10-01');

SELECT * from ORDEM_SERVICO;