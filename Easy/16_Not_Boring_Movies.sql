WITH odd AS(
    SELECT *,
        CASE 
            WHEN id % 2.0 = 0 THEN 'even'
            ELSE 'odd'
        END AS odd_check
     from Cinema
)

SELECT id, movie, description, rating FROM odd
WHERE odd_check = 'odd'
AND description <> 'boring'
ORDER BY rating DESC;