# Análisis de Partos Adolescentes en República Dominicana (2020-2025) 2025 parciales

## Resumen Ejecutivo:

El embarazo adolescente representa un desafío significativo de salud pública en el país, con implicaciones sociales y económicas que requieren intervenciones basadas en evidencia. Utilizando Python, SQL y Power BI, analicé partos adolescentes registrados entre 2020-2025 para identificar patrones territoriales, tendencias temporales y desigualdades en prácticas obstétricas.

El análisis revela algunos hallazgos importantes:

1. Reducción nacional de 8,001 casos entre 2020-2024, pero con progreso desigual entre provincias.

2. Tres provincias críticas (Duarte, San José de Ocoa, Pedernales) concentran embarazos en menores de 15 años significativamente por encima del promedio nacional.

3. Desigualdad territorial extrema en tasas de cesáreas: diferencia de hasta 68.86 puntos porcentuales entre provincias para menores de 15 años.
   
4. Aumento del 50.7% en partos adolescentes en la provincia de Pedernales entre 2020-2024, haciendola a esta la provincia que mayor incremento ha experimentado.
   
5. La provincia de Hermanas Mirabales presenta la tasa más alta de cesáreas para ambos grupos etarios: 65.62% para jóvenes de 15 a 19 años y 86.36% para menores de 15 años.

Basándome en estos hallazgos, **recomiendo tres líneas de acción prioritarias** para el Ministerio de Salud Pública:

1. **Intervenciones focalizadas** en las 3 provincias con vulnerabilidad crítica en menores de 15 años
2. **Estandarización de protocolos obstétricos** nacionales para reducir inequidad en tasas de cesáreas
3. **Replicación de mejores prácticas** de las 11 provincias con reducción consistente año tras año

Aumento del 50.7% en partos adolescentes en la provincia de Pedernales entre 2020-2024, haciendola a esta la provincia con mayor incremento ha experimentado  


## Problema de Negocio:

El embarazo adolescente, particularmente en menores de 15 años, representa una prioridad de salud pública por sus implicaciones en educación, desarrollo económico y bienestar social. A pesar de los esfuerzos gubernamentales y de organizaciones civiles, los tomadores de decisiones carecían de herramientas analíticas para:

- **Identificar** provincias que requieren intervención prioritaria
- **Monitorear** el progreso de reducciones a nivel territorial
- **Detectar** desigualdades en prácticas obstétricas entre provincias
- **Evaluar** la efectividad de políticas implementadas

**Pregunta clave de negocio:** ¿Dónde debemos concentrar recursos y esfuerzos para maximizar el impacto en la reducción del embarazo adolescente y mejorar la equidad en atención obstétrica?


## Herramientas:

1. **Python:** Limpieza de datos

2. **MySQL Workbench:** Extraer información y transformarla para su uso posterior en Power BI

3. **Power BI:** Creación del dashboard

## Habilidades Técnicas Aplicadas

- **Python:** Pandas, creación de funciones, uso de bucles
- **SQL:** CTEs, funciones de ventana, funciones de agregación, sentencias CASE, joins
- **Power BI:** Dax, columnas calculadas, medidas, visualización de datos

**Estructura del Dashboard:**

1. **Composición Nacional:** Muestra cómo se compone el fenómeno
2. **Vulnerabilidad <15:** Focalización en grupo de mayor riesgo
3. **Evolución Temporal:** Tendencias nacionales y provinciales 2020-2024
4. **Análisis de Cesáreas:** Disparidades provinciales en prácticas obstétricas


## Resultados  

**El análisis revela algunos hallazgos importantes:**

1. Entre 2020-2025 se registró un total de 123,249 partos adolescentes

2. Reducción nacional de 8,001 casos entre 2020-2024, pero con progreso desigual entre provincias.
   
3. Solo 11 de 32 provincias presentan una reducción de partos consistente entre 2021-2024 

4. Tres provincias (Duarte, San José de Ocoa, Pedernales) concentran embarazos en menores de 15 años significativamente por encima del promedio nacional.

5. Desigualdad territorial extrema en tasas de cesáreas: diferencia de hasta 68.86 puntos porcentuales entre provincias para menores de 15 años.
   
6. Aumento del 50.7% en partos adolescentes en la provincia de Pedernales entre 2020-2024, haciendola a esta la provincia que mayor incremento experimentó.
   
7. La provincia de Hermanas Mirabales presenta la tasa más alta de cesáreas para ambos grupos etarios: 65.62% para jóvenes de 15 a 19 años y 86.36% para menores de 15 años.


## Recomendaciones 

- Implementar programas intensivos de prevención en Duarte, San José de Ocoa y Pedernales, con énfasis en educación sexual. 

- Desarrollar e implementar guías clínicas para cesáreas en adolescentes, con enfoque en provincias con tasas extremas como Hermanas Mirabales.

- Documentar e intentar replicar estrategias de las 11 provincias con reducción de partos consistente

**Estructura del Dashboard:**

1. **Panorama General:** Magnitud del fenómeno y concentración territorial
2. **Vulnerabilidad <15:** Focalización en grupo de máximo riesgo
3. **Evolución Temporal:** Tendencias nacionales y provinciales 2020-2024
4. **Equidad en Cesáreas:** Disparidades territoriales en prácticas obstétricas

---

## Próximos Pasos

### Corto Plazo (3-6 meses)
1. **Auditoría de provincias extremas:** Investigación cualitativa en Hermanas Mirabal (alta tasa cesáreas) y Elías Piña (baja tasa)
2. **Piloto de intervención:** Implementar programa intensivo en 1 provincia crítica (Duarte) como prueba de concepto
3. **Capacitación de stakeholders:** Entrenar a personal del Ministerio en uso del dashboard

### Mediano Plazo (6-12 meses)
1. **Expansión de intervenciones:** Escalar programa piloto a las otras 2 provincias críticas
2. **Desarrollo de protocolos:** Co-crear guías clínicas con Sociedad Dominicana de Ginecología
3. **Sistema de alertas:** Implementar notificaciones automáticas cuando provincias muestren aumentos inesperados

### Largo Plazo (12-24 meses)
1. **Evaluación de impacto:** Medir cambios en provincias intervenidas vs. control
2. **Integración de datos adicionales:** Incorporar variables socioeconómicas, educativas y de acceso a servicios
3. **Modelo predictivo:** Desarrollar algoritmo de machine learning para identificar provincias en riesgo de aumento

---

## Nota Técnica: Datos 2025

Los datos de 2025 comprenden únicamente enero-septiembre (3 trimestres). En el análisis:
- **Se incluyen** en métricas de porcentajes y tasas (composición interna no afectada por período parcial)
- **Se excluyen** de comparaciones de volumen absoluto y variaciones interanuales (requieren años completos)

Esta metodología asegura rigor estadístico mientras maximiza el uso de datos disponibles.

---

## Contacto y Recursos

- **Dashboard interactivo:** [Link al Power BI Service]
- **Repositorio GitHub:** [Link con código SQL, documentación y archivos .pbix]
- **LinkedIn:** [Tu perfil]
- **Email:** [Tu correo]

---

**Licencia:** MIT  
**Última actualización:** Diciembre 2024  
**Versión:** 1.0

---

*Este proyecto fue desarrollado de manera independiente con fines analíticos y educativos, utilizando datos públicos del Ministerio de Salud Pública de República Dominicana.*
