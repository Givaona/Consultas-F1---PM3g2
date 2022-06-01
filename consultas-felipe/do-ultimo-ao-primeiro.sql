SELECT 
re.resultid, re.raceid, re.driverid, re.grid, re.position, re.time,
dr.forename, dr.surname, dr.nationality,
co.constructorRef, co.name, co.nationality,
ra.year, ra.round, ra.circuitid, ra.name, ra.date
FROM f1.results re
inner join drivers dr on re.driverId = dr.driverid
inner join constructors co on co.constructorId = re.constructorId
inner join races ra on re.raceId = ra.raceid
where position = 1 AND grid = 22

-- Do ultimo ao primeiro.
--
-- O piloto john watson da mclaren foi o piloto que largou mais distante do podio e chegou em primeiro, (atualmente a corrida possui 20 pilotos)
-- o resultado permite pesquisar e identificar exatamente a corrida, USA GP West, ano 1983 Round 2.
-- identifiquei o video no youtube e foi uma corrida com bastante problemas para as outras equipes, 
-- as maclarens da equipe de lauda largaram no grid nas duas ultimas posiçoes da corrida (na epoca)
-- 23 e 22, e ambos os pilotos chegaram nas primeiras posiçoes do podio. 2o para lauda, primeiro
-- para watson.
