# ROW_NUMBER()

Esta función asigna números secuenciales a las filas de un conjunto de resultados, proporcionando un orden claro para su posterior manipulación y análisis. Esto puede hacerse para el conjunto de datos en su totalidad o para distintos grupos de datos dentro del conjunto de datos.

`ROW_NUMBER() OVER([PARTITION BY value expression, ... ] [ORDER BY order_by_clause])`

```
SELECT Val_1, 
    ROW_NUMBER() OVER(PARTITION BY group_1, ORDER BY number DESC) AS rn
FROM Data;
```

Useful links:
https://duckdb.org/docs/current/sql/functions/dateformat
https://www.datacamp.com/es/tutorial/row-number-sql