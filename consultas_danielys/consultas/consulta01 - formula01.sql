# posição dos corredores quando fizeram a melhor volta da pista. 

SELECT * FROM formula1.laptimes;

select
	r.name as 'Corridas', r.year as 'Ano',
    min(l.time) as 'Menor tempo de volta',
	l.lap as 'Voltas', l.position as 'Posição', 
    d.forename as 'Nome', d.surname as 'Sobrenome'
from 
	laptimes l
join 
	drivers d
on 
	l.driverId = d.driverId
join
	races r
on
	l.raceId = r.raceId
group by r.name
order by l.position asc;

