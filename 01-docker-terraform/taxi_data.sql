WITH q as (
select d."Zone" as dropoff_zone,g.tip_amount
from green_taxi_data g
join zones p on g."PULocationID"=p."LocationID"
join zones d on g."DOLocationID"=p."LocationID"
where 
g.lpep_pickup_datetime >= '2019-10-01' and g.lpep_pickup_datetime < '2019-11-01'
and p."Zone" = 'East Harlem North'
)

Select *
from q
order by 2 DESC limit 1