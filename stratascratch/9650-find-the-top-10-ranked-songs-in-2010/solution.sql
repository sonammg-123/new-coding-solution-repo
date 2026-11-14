SELECT DISTINCT
    song_name,
    group_name,
    year_rank
FROM billboard_top_100_year_end
WHERE year = '2010'
ORDER BY year_rank ASC
LIMIT 10;
