SELECT query_name,
    Round(AVG(cast(rating as decimal) / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.00 / COUNT(*), 2) AS poor_query_percentage
FROM queries
group by query_name
ORDER BY query_name DESC;