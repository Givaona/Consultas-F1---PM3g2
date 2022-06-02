#1. Numero de vezes que o piloto que largou em primeiro venceu a corrida

	SELECT concat(p.forename," ", p.surname) as nome , R.driverId, R.grid, R.position, COUNT(R.position) as qtdPrime  FROM results R
	INNER JOIN DRIVERS P ON R.DRIVERID = P.DRIVERID
	WHERE r.grid = 1 AND r.position = 1
	GROUP BY NOME
	ORDER BY qtdPrime DESC
	LIMIT 10;


#2. Pilotos que terminaram a corrida com menor tempo e em condições favoráveis (ou com outro status específico)
	
    SELECT concat(d.forename," ",d.surname) AS piloto,
		c.name as equipe,
		r.position as posição,
		s.status as condição,
		r.milliseconds as tempo_milisegundos,
		ci.name as GP,
		ci.location as localização
	FROM results r 
	INNER JOIN drivers d ON d.driverId = r.driverId
	INNER JOIN constructors c ON c.constructorId = r.constructorId
	INNER JOIN status_ s ON r.statusId = s.statusId
	INNER JOIN races rc ON  rc.raceId = r.raceId
	INNER JOIN circuits ci ON ci.circuitId = rc.circuitId 
	WHERE position = 1 AND r.STATUSid = 1
	ORDER BY milliseconds ASC 
	LIMIT 10;
