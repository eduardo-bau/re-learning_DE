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
https://duckdb.org/docs/2.0/sql/data_types/boolean
https://www.datacamp.com/es/tutorial/coalesce-sql-function
https://www.datacamp.com/es/tutorial/sql-rank

# RANK()

Syntax `RANK() OVER (ORDER BY column)`



RANK(): Los empates comparten rango y, por tanto, quedan huecos tras los empates.

DENSE_RANK(): Los empates comparten rango, pero no hay huecos en la secuencia.

ROW_NUMBER(): Cada fila obtiene un número único sin empates, aunque los valores sean iguales.
