--RISING TEMPERATURE
select w1.id from weather w1, weather w2
where w1.temperature > w2.temperature 
and 
DATEDIFF(DAY, w2.recorddate, w1.recorddate) = 1
