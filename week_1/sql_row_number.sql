show tables;

from netflix_gold_dataset limit 15;

--ROW_NUMBER()

SELECT title
    ,ROW_NUMBER() OVER(PARTITION BY netflix_release_date ORDER BY title) as rn
FROM netflix_gold_dataset
WHERE type = 'Movie';