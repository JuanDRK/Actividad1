/*¿Cuántos ríos fluyen a través de cada país que tiene más de 15 ríos?*/
SELECT res.country, res.count FROM (SELECT COUNT (DISTINCT geo_river), geo_river.country
FROM geo_river JOIN country on geo_river.country = country.code GROUP by geo_river.country)
AS res WHERE res.count > 15

/*Obtenga el nombre de los países que pertenecen o son miembros de la UNESCO o de UNASUR*/
SELECT country FROM ismember 
	WHERE organization = 'UNESCO' OR organization = 'UNASUR'

/*¿Cuál es el nombre, población y altitud de cada ciudad en Colombia (según lo registrado en la base de datos)? Los resultados deben estar ordenados de manera descendente por población.*/
SELECT name, population, elevation FROM city
	WHERE city.country = 'CO' 
	ORDER BY population DESC NULLS LAST  
  
/*Obtenga los códigos de todos los países para los cuales (a) el PIB está compuesto al menos en un 70% por los sectores de Servicios e Industria juntos, o (b) la inflación es inferior al 2%.*/  
SELECT DISTINCT COUNT (country) FROM economy
WHERE economy.gdp * 0.70 <= economy.industry + economy.service * 100 OR economy.inflation < 2
