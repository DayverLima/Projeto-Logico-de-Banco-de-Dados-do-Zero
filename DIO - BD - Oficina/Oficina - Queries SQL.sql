use Oficina;

-- Quantos clientes cadastrados existem no sistema ?
SELECT COUNT(*) AS Total_Clientes
FROM cliente;

-- Quantas ordens de serviço cada cliente possui?
select c.idCliente, c.pname, count(o.idOrdem_de_Serviço) as Total_OS
from cliente c
left join ordem_de_serviço o on c.idCliente = o.idOSCliente
group by c.idCliente, c.Pname
order by Total_OS desc;

-- Faturamento total por cliente
select c.idCliente, c.Pname, sum(o.Valor_Total) as Faturamento
from cliente c
join ordem_de_serviço o on c.idCliente = o.idOSCliente
group by c.idCliente, c.Pname
order by idCliente asc;

-- Quantas OS cada equipe realizou?
select e.Nome_equipe, count(o.idOrdem_de_Serviço) as Total_Ordens
from equipe e
left join ordem_de_serviço o on e.idEquipe = o.idOSEquipe
group by e.Nome_Equipe
order by Total_Ordens desc;

-- Faturamento total por equipe
select e.Nome_Equipe, sum(o.Valor_Total) as Faturamento
from equipe e
join ordem_de_serviço o on e.idEquipe = o.idOSEquipe
group by e.Nome_Equipe
order by  Faturamento desc;

-- Peças mais utilizadas nas ordens
select p.Descrição, sum(opb.Quantidade) as Total_Usada
from os_peça_base opb
join peça_base p on opb.idPBPeça_Base = p.idPeça_Base
group by p.Descrição
order by Total_Usada desc;

-- Qual serviço mais lucrativo?
select s.Descrição, sum(osb.Valor_Total) as Receita_Total
from os_serviço_base osb
join serviço_base s on osb.idSBServiço_Base = s.idServiço_Base
group by s.Descrição
order by Receita_Total desc;

-- Tempo médio de conclusão das ordens (em dias)
select avg(datediff(Data_Conclusão, Data_Emissão)) as Media_Dias
from ordem_de_serviço
where Data_Conclusão is not null;

-- Quantidade de Ordem de Serviço por status
select Status_OS, count(*) as Total
from ordem_de_serviço
group by Status_OS;

-- Mecânicos por equipe
select e.Nome_Equipe, count(m.idMecanico) as Quantidade_de_Mecanicos
from equipe e
join mecanico_da_equipe me on e.idEquipe = me.idMEEquipe
join mecanico m on me.idMEMecanico = m.idMecanico
group by e.Nome_Equipe
order by Quantidade_de_Mecanicos desc;

-- Total de peças e serviços por OS (detalhado)
select 
	o.idOrdem_de_Serviço,
    coalesce(sum(opb.Valor_Total),0) as Total_Pecas,
    coalesce(sum(osb.Valor_Total),0) AS Total_Servicos,
    (COALESCE(SUM(opb.Valor_Total),0) + COALESCE(SUM(osb.Valor_Total),0)) AS Total_OS
from ordem_de_serviço o
left join os_peça_base opb on o.idOrdem_de_Serviço = opb.idPBOrdem_de_Serviço
left join os_serviço_base osb on o.idOrdem_de_Serviço = osb.idSBOrdem_de_Serviço
group by o.idOrdem_de_Serviço;

-- Veículos com mais ordens de serviço
select v.Placa, v.Modelo, count(o.idOrdem_de_Serviço) as Total_OS
from veículo v
join ordem_de_serviço o on v.idVeículo = o.idOSVeículo
group by v.Placa, v.Modelo
order by Total_OS desc;

-- Quantas ordens não foram concluídas (atrasadas)
select count(*) as OS_Atrasadas
from ordem_de_serviço
where Data_Conclusão is null;