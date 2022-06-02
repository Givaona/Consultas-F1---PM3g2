SELECT 
re.resultid, re.raceid, re.driverid, re.grid, re.position, re.time,
dr.forename, dr.surname, dr.nationality,
co.constructorRef, co.name, co.nationality,
ra.year, ra.round, ra.circuitid, ra.name, ra.date
FROM f1.results re
inner join drivers dr on re.driverId = dr.driverid
inner join constructors co on co.constructorId = re.constructorId
inner join races ra on re.raceId = ra.raceid
where position = 1
order by grid desc
limit 5

-- interessante, rubens barrichello em terceiro, john watson tambem com a quarta melhor recupercaçao de 17o a pole position no ano anterior ao que ficou em primeiro,
-- aparecendo duas vezes nesse record.