from netflix limit 5;



-- This code transforms the netflix dataset to a more manipulable and casted dates
CREATE OR REPLACE TABLE netflix_gold_dataset AS
SELECT "As of"::DATE as as_of
,Rank::INT as rank
,"Year to Date Rank"::VARCHAR as year_to_date_rank
,"Last Week Rank"::VARCHAR as last_week_rank
,Title as title
,Type as type
,"Netflix Exclusive" as netflix_exclusive
,DATE(strptime("Netflix Release Date", '%b %-d, %Y')) as netflix_release_date
,"Days In Top 10"::INT as days_in_top_10
,"Viewership Score"::INT as viewership_score
FROM netflix;