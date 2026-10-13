Select p.product_id, 
Round(
    coalesce(
        sum(u.units * p.price) * 1.0 / NULLIF(sum(u.units), 0), 0),
     2) AS average_price
from prices p
left join unitssold u
on p.product_id = u.product_id
and u.purchase_date BETWEEN p.start_date and p.end_date
group by p.product_id;