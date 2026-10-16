select sell_date,
count(product) as num_sold,
string_agg(product, ',') as products
from (
    select distinct * from activities
) a
group by sell_date;