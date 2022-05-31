/*¿Cuántos ríos fluyen a través de cada país que tiene más de 15 ríos?*/


/*Obtenga el nombre de los países que pertenecen o son miembros de la UNESCO o de UNASUR*/
SELECT country FROM ismember 
 	WHERE organization = 'UNESCO' OR organization = 'UNASUR'

/*¿Cuál es el nombre, población y altitud de cada ciudad en Colombia (según lo registrado en la base de datos)? Los resultados deben estar ordenados de manera descendente por población.*/
SELECT name, population, elevation FROM city
	WHERE city.country = 'CO' 
  ORDER BY population DESC NULLS LAST  
  
/*Obtenga los códigos de todos los países para los cuales (a) el PIB está compuesto al menos en un 70% por los sectores de Servicios e Industria juntos, o (b) la inflación es inferior al 2%.*/  
