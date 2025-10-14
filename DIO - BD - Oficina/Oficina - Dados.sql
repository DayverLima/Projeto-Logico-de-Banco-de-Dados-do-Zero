use Oficina;

-- =========================
-- TABELA CLIENTE
-- =========================
INSERT INTO cliente (Pname, NmeioInicial, Sobrenome, Endereço, telefone) VALUES
('Carlos', 'A.', 'Silva', 'Rua A, 123', '11987654321'),
('Mariana', 'B.', 'Oliveira', 'Av. B, 456', '11912345678'),
('João', 'C.', 'Souza', 'Rua C, 789', '11911223344'),
('Fernanda', 'D.', 'Lima', 'Av. D, 101', '11999887766'),
('Ricardo', 'E.', 'Pereira', 'Rua E, 202', '11988776655'),
('Juliana', 'F.', 'Costa', 'Av. F, 303', '11955667788'),
('Bruno', 'G.', 'Almeida', 'Rua G, 404', '11944332211'),
('Patrícia', 'H.', 'Santos', 'Av. H, 505', '11933221144'),
('Felipe', 'I.', 'Ribeiro', 'Rua I, 606', '11922114433'),
('Renata', 'J.', 'Carvalho', 'Av. J, 707', '11999885566'),
('Gustavo', 'K.', 'Lopes', 'Rua K, 808', '11988775544'),
('Carla', 'L.', 'Moura', 'Av. L, 909', '11977665544'),
('Diego', 'M.', 'Ferreira', 'Rua M, 1010', '11966554433'),
('Camila', 'N.', 'Barbosa', 'Av. N, 1111', '11955443322'),
('Rafael', 'O.', 'Teixeira', 'Rua O, 1212', '11944332211'),
('Aline', 'P.', 'Gomes', 'Av. P, 1313', '11933221100'),
('Leonardo', 'Q.', 'Martins', 'Rua Q, 1414', '11922110099'),
('Beatriz', 'R.', 'Dias', 'Av. R, 1515', '11911009988'),
('Vitor', 'S.', 'Medeiros', 'Rua S, 1616', '11900998877'),
('Larissa', 'T.', 'Araújo', 'Av. T, 1717', '11999887766');

-- =========================
-- TABELA VEÍCULO
-- =========================
INSERT INTO veículo (idVCliente, Placa, Modelo, ano) VALUES
(1, 'ABC1234', 'Gol', '2015'),
(2, 'DEF5678', 'Civic', '2018'),
(3, 'GHI9012', 'Uno', '2012'),
(4, 'JKL3456', 'HB20', '2020'),
(5, 'MNO6789', 'Corolla', '2019'),
(6, 'PQR1234', 'Focus', '2016'),
(7, 'STU5678', 'Palio', '2011'),
(8, 'VWX9012', 'Fiesta', '2014'),
(9, 'YZA3456', 'Sandero', '2017'),
(10, 'BCD6789', 'Ka', '2013'),
(11, 'EFG1234', 'Golf', '2018'),
(12, 'HIJ5678', 'HB20S', '2021'),
(13, 'KLM9012', 'Etios', '2015'),
(14, 'NOP3456', 'Civic', '2019'),
(15, 'QRS6789', 'Onix', '2020'),
(16, 'TUV1234', 'Palio', '2012'),
(17, 'WXY5678', 'Tracker', '2021'),
(18, 'ZAB9012', 'EcoSport', '2018'),
(19, 'CDE3456', 'Fox', '2014'),
(20, 'FGH6789', 'Mobi', '2017');

-- =========================
-- TABELA EQUIPE
-- =========================
INSERT INTO equipe (Nome_Equipe) VALUES
('Equipe Alfa'),
('Equipe Beta'),
('Equipe Gama'),
('Equipe Delta'),
('Equipe Epsilon');

-- =========================
-- TABELA MECÂNICO
-- =========================
INSERT INTO mecanico (Pname, NmeioInicial, Sobrenome, Endereço, Especialidade) VALUES
('Rafael', 'E.', 'Costa', 'Rua X, 11', 'Motor'),
('Lucas', 'F.', 'Pereira', 'Av. Y, 22', 'Freios'),
('Ana', 'G.', 'Martins', 'Rua Z, 33', 'Suspensão'),
('Marcos', 'H.', 'Alves', 'Av. W, 44', 'Elétrica'),
('Priscila', 'I.', 'Ramos', 'Rua V, 55', 'Motor'),
('Eduardo', 'J.', 'Silveira', 'Av. U, 66', 'Freios'),
('Fernanda', 'K.', 'Barros', 'Rua T, 77', 'Suspensão'),
('Thiago', 'L.', 'Mendonça', 'Av. S, 88', 'Elétrica'),
('Camila', 'M.', 'Nunes', 'Rua R, 99', 'Motor'),
('Daniel', 'N.', 'Faria', 'Av. Q, 100', 'Freios');

-- =========================
-- TABELA MECÂNICO_DA_EQUIPE
-- =========================
INSERT INTO mecanico_da_equipe (idMEMecanico, idMEEquipe) VALUES
(1,1),(2,1),(3,1),
(4,2),(5,2),(6,2),
(7,3),(8,3),(9,3),
(10,4),(1,5),(2,5);

-- =========================
-- TABELA PEÇA_BASE
-- =========================
INSERT INTO peça_base (Descrição, Valor) VALUES
('Filtro de óleo',50.00),('Pastilha de freio',120.00),('Bateria',300.00),
('Velas',40.00),('Correia dentada',200.00),('Amortecedor',350.00),
('Disco de freio',180.00),('Filtro de ar',60.00),('Óleo motor',90.00),
('Filtro de combustível',70.00),('Cabo de vela',25.00),('Lâmpada farol',15.00),
('Bomba de água',250.00),('Radiador',400.00),('Embreagem',600.00),
('Mangueira',30.00),('Pastilha traseira',100.00),('Filtro de cabine',80.00),
('Sensor de oxigênio',150.00),('Velocímetro',200.00);

-- =========================
-- TABELA SERVIÇO_BASE
-- =========================
INSERT INTO serviço_base (Descrição, Valor) VALUES
('Troca de óleo',100.00),('Alinhamento',80.00),('Revisão geral',300.00),
('Balanceamento',60.00),('Troca de pastilhas',150.00),('Substituição bateria',200.00),
('Revisão freios',180.00),('Limpeza de radiador',120.00),('Troca de velas',50.00),
('Inspeção elétrica',100.00),('Lubrificação suspensão',70.00),('Check-up motor',250.00),
('Instalação sensor',180.00),('Substituição correia',220.00),('Troca de amortecedor',350.00),
('Alinhamento 4x4',200.00),('Revisão ar-condicionado',150.00),('Reparação painel',300.00),
('Troca de filtro ar',40.00),('Revisão embreagem',400.00);

-- =========================
-- TABELA ORDEM_DE_SERVIÇO
-- =========================
INSERT INTO ordem_de_serviço (Data_Emissão, Data_Conclusão, Valor_Total, Status_OS, idOSEquipe, idOSVeículo, idOSCliente) VALUES
('2025-10-01','2025-10-05',1500.00,'Entregue',1,1,1),
('2025-10-02',NULL,800.00,'Em Andamento',2,2,2),
('2025-10-03',NULL,500.00,'Processando',1,3,3),
('2025-10-04','2025-10-07',1200.00,'Entregue',3,4,4),
('2025-10-05',NULL,950.00,'Em Andamento',4,5,5),
('2025-10-06','2025-10-09',600.00,'Entregue',5,6,6),
('2025-10-07',NULL,1100.00,'Processando',1,7,7),
('2025-10-08','2025-10-12',700.00,'Entregue',2,8,8),
('2025-10-09',NULL,850.00,'Em Andamento',3,9,9),
('2025-10-10',NULL,400.00,'Processando',4,10,10),
('2025-10-11','2025-10-15',1300.00,'Entregue',5,11,11),
('2025-10-12',NULL,950.00,'Em Andamento',1,12,12),
('2025-10-13',NULL,500.00,'Processando',2,13,13),
('2025-10-14','2025-10-18',1250.00,'Entregue',3,14,14),
('2025-10-15',NULL,750.00,'Em Andamento',4,15,15),
('2025-10-16','2025-10-20',900.00,'Entregue',5,16,16),
('2025-10-17',NULL,600.00,'Processando',1,17,17),
('2025-10-18','2025-10-22',1100.00,'Entregue',2,18,18),
('2025-10-19',NULL,850.00,'Em Andamento',3,19,19),
('2025-10-20',NULL,950.00,'Processando',4,20,20);

-- =========================
-- TABELA OS_PEÇA_BASE
-- =========================
INSERT INTO os_peça_base (idPBOrdem_de_Serviço, idPBPeça_Base, Quantidade, Valor_Total) VALUES
(1,1,1,50.00),(1,2,2,240.00),(2,3,1,300.00),(2,4,4,160.00),
(3,5,1,200.00),(3,6,2,700.00),(4,7,1,180.00),(4,8,1,60.00),
(5,9,1,90.00),(5,10,1,70.00),(6,11,4,100.00),(6,12,2,30.00),
(7,13,1,250.00),(7,14,1,400.00),(8,15,1,600.00),(8,16,3,90.00),
(9,17,2,200.00),(9,18,1,80.00),(10,19,4,160.00),(10,20,1,200.00);

-- =========================
-- TABELA OS_SERVIÇO_BASE
-- =========================
INSERT INTO os_serviço_base (idSBOrdem_de_Serviço, idSBServiço_Base, Quantidade, Valor_Total) VALUES
(1,1,1,100.00),(1,2,1,80.00),(2,3,1,300.00),(2,4,1,60.00),
(3,5,2,300.00),(3,6,1,200.00),(4,7,1,180.00),(4,8,1,120.00),
(5,9,1,50.00),(5,10,1,100.00),(6,11,1,70.00),(6,12,1,250.00),
(7,13,1,180.00),(7,14,1,220.00),(8,15,1,350.00),(8,16,1,200.00),
(9,17,1,150.00),(9,18,1,300.00),(10,19,1,40.00),(10,20,1,400.00);
