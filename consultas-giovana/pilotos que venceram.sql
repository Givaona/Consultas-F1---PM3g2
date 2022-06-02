SELECT concat(p.forename," ", p.surname) as nome , R.driverId, R.grid, R.position, COUNT(R.position) as qtdPrime  FROM results R
INNER JOIN DRIVERS P ON R.DRIVERID = P.DRIVERID
WHERE r.grid = 1 AND r.position = 1
GROUP BY NOME
ORDER BY qtdPrime DESC
LIMIT 10;