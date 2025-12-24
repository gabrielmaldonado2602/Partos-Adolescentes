#1. ¿Cómo se distribuye el embarazo adolescente a nivel nacional por cohorte (<15 y 15-19) y tipo de parto (cesárea/vaginal), 
#y cómo ha cambiado esta composición entre 2020 y 2025?

WITH totales AS (
    SELECT
        año,
        rango_edad,
        tipo_parto, 
        SUM(cantidad) AS total_partos, 
        SUM(SUM(cantidad)) OVER (PARTITION BY año) AS total_partos_por_año 
    FROM 
		partos_adolescentes
    GROUP BY 
		año, 
        rango_edad, 
        tipo_parto
)
SELECT 
    año,
    rango_edad,
    tipo_parto,
    total_partos,
    ROUND(total_partos / total_partos_por_año  * 100, 2) AS porcentaje_del_año,
    LAG(ROUND(total_partos / total_partos_por_año  * 100, 2)) OVER (PARTITION BY rango_edad, tipo_parto ORDER BY año) AS porcentaje_año_anterior
FROM 
	totales;    

    
#2. ¿Dónde se concentra el embarazo en menores de 15 años y qué provincias 
#muestran proporciones críticas que exceden significativamente el promedio nacional?

WITH ratio_provincial AS (
    SELECT 
        provincia,
        SUM(CASE WHEN rango_edad = 'Menor de 15' THEN cantidad ELSE 0 END) AS casos_menor_15,
        SUM(cantidad) AS total_partos,
        ROUND(
            SUM(CASE WHEN rango_edad = 'Menor de 15' THEN cantidad ELSE 0 END) /
            SUM(cantidad) * 100, 2) AS porcentaje_menor_15
    FROM
        partos_adolescentes
    GROUP BY 
        provincia
),
promedio_nacional AS (
    SELECT 
        AVG(porcentaje_menor_15) AS promedio_nacional
    FROM 
        ratio_provincial
)
SELECT 
    r.*,
    p.*,
    ROUND(porcentaje_menor_15 - promedio_nacional, 2) AS diferencia_vs_promedio,
    
	-- Clasificación según desviación del promedio nacional
    CASE 
        WHEN porcentaje_menor_15 > promedio_nacional + 2 THEN 'CRÍTICA'
        WHEN porcentaje_menor_15 > promedio_nacional + 1 THEN 'ALTA'
        WHEN porcentaje_menor_15 < promedio_nacional - 1 THEN 'BAJA'
        ELSE 'NORMAL'
    END AS clasificacion
FROM 
    ratio_provincial r
CROSS JOIN 
	promedio_nacional p
ORDER BY 
    porcentaje_menor_15 DESC;

    
#3. ¿Qué provincias experimentaron los mayores cambios (mejoras o deterioros) entre 2020 y 2024, y
# cuáles mantienen reducciones consistentes año tras año?

WITH total_partos AS (
	SELECT 
		año,
		provincia,
		SUM(cantidad) as total_partos
	FROM
		partos_adolescentes
	GROUP BY 
		año,
		provincia
)
SELECT
	*,
    LAG(total_partos) OVER(PARTITION BY provincia ORDER BY año) AS valor_anterior,
	ROUND(
		(total_partos -  LAG(total_partos) OVER(PARTITION BY provincia ORDER BY año)) / 
        LAG(total_partos) OVER(PARTITION BY provincia ORDER BY año) * 100, 2)  AS variacion_interanual
FROM
	total_partos
WHERE
    año BETWEEN 2020 AND 2024;
    
    
#4. ¿Cómo varían las tasas de cesáreas entre provincias y grupos etarios, 
#y existe relación entre el volumen de casos que maneja una provincia y su tasa de cesáreas?


WITH tasas_cesarea AS 
(
SELECT
	provincia,
    SUM(CASE WHEN rango_edad = 'Menor de 15'  THEN cantidad END) as total_menor_15,
    SUM(CASE WHEN rango_edad = 'Menor de 15' AND tipo_parto = 'cesárea' THEN cantidad END) as cesarea_menor_15,
    SUM(CASE WHEN rango_edad = '15-19' THEN cantidad END) as total_15_19,
    SUM(CASE WHEN rango_edad = '15-19' AND tipo_parto = 'cesárea' THEN cantidad END) as cesarea_15_19
FROM
	partos_adolescentes
GROUP BY
	provincia
)

SELECT 
	*,
    ROUND( cesarea_menor_15 / total_menor_15 * 100, 2) AS tasa_menor_15,
    ROUND( cesarea_15_19 / total_15_19 * 100, 2) AS tasa_15_19
FROM
	tasas_cesarea;


#NOTA: La relación será calculada en Power BI