/*creating hotels table by combining 3 table */
WITH hotels as (
SELECT * FROM dbo.['2018$']
UNION 
SELECT * FROM dbo.['2019$']
UNION 
SELECT * FROM dbo.['2020$'])


/* cost of revenue*/

/*
SELECT hotel,arrival_date_year,round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr),2)
as revenue from hotels  
group by arrival_date_year,hotel
order by arrival_date_year desc
*/

SELECT * FROM hotels 
LEFT JOIN market_segment$ on hotels.market_segment=market_segment$.market_segment
LEFT JOIN meal_cost$ on meal_cost$.meal = hotels.meal

