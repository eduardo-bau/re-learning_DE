show tables;

from netflix;

--ROW_NUMBER()

with filtered as (SELECT Title as movie_title,
DATE(strptime("Netflix Release Date", '%b %-d, %Y')) as release_date,
FROM netflix
WHERE Type = 'Movie'
)

SELECT movie_title
,release_date
,ROW_NUMBER() OVER(PARTITION BY release_date ORDER BY movie_title) as rn
FROM filtered;