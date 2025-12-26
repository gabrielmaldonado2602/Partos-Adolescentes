# Análisis de Partos Adolescentes en República Dominicana (2020-2025) 

## Nota Técnica: Datos 2025

Los datos de 2025 comprenden únicamente enero-septiembre (3 trimestres). En el análisis se incluyen en métricas de porcentajes y tasas, y se excluyen de comparaciones de volumen absoluto y variaciones interanuales (requieren años completos).
  
## Descripción del Proyecto:

El embarazo adolescente representa un desafío significativo de salud pública en el país, con implicaciones sociales y económicas que requieren intervenciones basadas en evidencia. Utilizando Python, SQL y Power BI, analicé partos adolescentes registrados entre 2020-2025 para identificar patrones territoriales, tendencias temporales y desigualdades en prácticas obstétricas.

## Herramientas:

1. **Python:** Limpieza de datos

2. **MySQL Workbench:** Extraer información y transformarla para su uso posterior en Power BI

3. **Power BI:** Creación del dashboard

## Habilidades Técnicas Aplicadas:

- **Python:** Pandas, creación de funciones, uso de bucles
- **SQL:** CTEs, funciones de ventana, funciones de agregación, sentencias CASE, joins
- **Power BI:** Dax, columnas calculadas, medidas, visualización de datos

## Estructura del Dashboard:

1. **Composición Nacional:** Muestra cómo se compone el fenómeno
   
2. **Vulnerabilidad <15:** Focalización en grupo de mayor riesgo
   - Las provincias fueron clasificadas según desviación del promedio nacional. Se utilizaron umbrales de ±1 y +2 puntos porcentuales por ser más adecuados para estos datos. El uso de umbrales más cerrados (por ejemplo, ±0.5 y +1.5) hubiese clasificado a provincias con un valor cercano al promedio nacional como "alta" en lugar de "normal". Por el contrario, el uso de umbrales más abiertos (por ejemplo, ±2 y +3 o superiores) habría provocado que la gran mayoría de las provincias fuesen clasificadas "normal".
     
3. **Evolución Temporal:** Tendencias nacionales y provinciales del período 2020-2024
   
4. **Análisis de Cesáreas:** Identificación de disparidades provinciales en prácticas obstétricas


## Resultados:

**El análisis revela algunos hallazgos importantes:**

1. Entre 2020-2025 se registró un total de 123,249 partos adolescentes

2. Reducción nacional de 8,001 casos entre 2020-2024, pero con progreso desigual entre provincias.
   
3. Solo 11 de 32 provincias presentan una reducción de partos consistente entre 2021-2024 

4. Tres provincias (Duarte, San José de Ocoa, Pedernales) concentran embarazos en menores de 15 años significativamente por encima del promedio nacional.

5. Desigualdad territorial extrema en tasas de cesáreas: diferencia de hasta 68.86 puntos porcentuales entre provincias para menores de 15 años.
   
6. Aumento del 50.7% en partos adolescentes en la provincia de Pedernales entre 2020-2024, haciendola a esta la provincia que mayor incremento experimentó.
   
7. La provincia de Hermanas Mirabal presenta la tasa más alta de cesáreas para ambos grupos etarios: 65.62% para jóvenes de 15 a 19 años y 86.36% para menores de 15 años.


## Recomendaciones:

- Implementar programas intensivos de prevención en Duarte, San José de Ocoa y Pedernales, con énfasis en educación sexual. 

- Desarrollar e implementar guías clínicas para cesáreas en adolescentes, con enfoque en provincias con tasas extremas como Hermanas Mirabal.

- Documentar e intentar replicar estrategias de las 11 provincias con reducción de partos consistente

## Fuente: 

-  Datos descargados de la página del Ministerio de Salud Pública: https://www.msp.gob.do/web/Transparencia/estadisticas-institucionales-c/#470-produccion-de-salud

