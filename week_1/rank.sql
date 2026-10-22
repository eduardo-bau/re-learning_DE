show tables;

from netflix_gold_dataset limit 15;

-- order by viwership score. Then grouping by movie or tv_show
SELECT title
    ,viewership_score
    ,type
    --,RANK() OVER(ORDER BY viewership_score) as rank_views
    --,RANK() OVER(PARTITION BY type ORDER BY viewership_score desc) as rank_views
    ,DENSE_RANK() OVER(PARTITION BY type ORDER BY viewership_score desc) as rank_views
FROM netflix_gold_dataset;