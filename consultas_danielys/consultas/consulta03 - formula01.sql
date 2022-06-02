# Top 5 - Melhores pilotos

select 
	* 
from
	(select
		d.forename as nome, d.surname as sobrenome, d.nationality as nacionalidade,
		sum(ds.wins) as vitorias,
		sum(ds.points) as pontos
	from 
		driverstandings ds
	join
		drivers d
	on 
		ds.driverId = d.driverId   
	group by 
		ds.driverId
	order by 
		sum(ds.points) desc) as top5
limit 5;

# Top 5 - constructor que ganharam mais pontos, vitorias

select 
	* 
from
	(select
		c.name, c.nationality,
		sum(cs.wins) as vitorias,
		sum(cs.points) as pontos
	from 
		constructorstandings cs
	join
		constructors c
	on 
		cs.constructorId = c.constructorId   
	group by 
		cs.constructorId
	order by 
		sum(cs.points) desc) as top5
limit 5;