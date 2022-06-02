# Progressão de países onde aconteceram mais corridas conforme o ano.

SELECT * FROM formula1.races;

select 
	c.name as 'Nome do circuito',c.country as Pais,
	r.year as Ano, r.name as Carreira,
	count(c.country) as 'N° de corridas'
from 
	races r
join 
	circuits c
on r.circuitId = c.circuitId
group by c.country
order by count(c.country) desc




