SELECT COUNT(*) FROM flights;
SELECT origin, AVG(arrdelay),AVG(depdelay) from flights group by origin;
SELECT origin, colyear, colmonth, AVG(arrdelay) from flights group by colmonth, colyear, origin ORDER BY origin ASC, colyear ASC;
SELECT city, colyear, colmonth, AVG(arrdelay) from USairports FULL JOIN flights ON IATA = ORIGIN group by colmonth, colyear, city ORDER BY CITY ASC, colyear ASC;
SELECT uniquecarrier, colyear, colmonth, SUM(cancelled) AS total_cancelled FROM flights GROUP BY uniquecarrier ORDER BY total_cancelled DESC;
SELECT tailnum, SUM(distance) AS total_distance FROM flights GROUP BY tailnum ORDER BY total_distance DESC LIMIT 10;
SELECT uniquecarrier, AVG(arrdelay) AS avg_delay from flights GROUP BY uniquecarrier ORDER BY avg_delay DESC LIMIT 9; 