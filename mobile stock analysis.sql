create schema project;
use project;
select*from mobile;

-- Check mobile feature and price list--
select phone_name, price from mobile;

-- 5 most expensive phones--
select*from mobile
order by price desc
limit 5;

-- 5 most cheapest phones--
select*from mobile
order by price asc
limit 5;

-- top 5 samsung phones with price and all features--
select*from mobile where brands ="samsung"
order by price desc
limit 5; 

-- android phones list then top 5 high price android phone--
select*from mobile where operating_system_type = "android";
select*from mobile where operating_system_type = "android"
order by price desc
limit 5;

-- ios phone list then top 5 lower price ios phone--
select*from mobile where operating_system_type ="ios";
select*from mobile where operating_system_type ="ios"
order by price asc
limit 5;

-- which phones support 5g--
select*from mobile where 5g_availability ="yes";

-- total price of all phones is to be found with brand name--
select brands, sum(price) from mobile group by brands;

