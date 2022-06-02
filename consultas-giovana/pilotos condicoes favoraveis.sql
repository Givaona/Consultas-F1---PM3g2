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
