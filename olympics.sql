#Q1
select count(distinct(games)) as total_games from events;

#Q3

select count(distinct(country)),games from events group by games;
#Q2

select years,season,city from events group by years,season,city order by years asc;

#Q4
select count(distinct(country)),games from events group by games order by count(distinct(country)) desc limit 1;
select count(distinct(country)),games from events group by games order by count(distinct(country)) asc limit 1;

select count(distinct(games)) as total_games from events;

#Q5

select country,count(distinct(games)) as total_participated_games from events group by country order by count(distinct(games)) desc limit 4;

#Q6

select sports,count(distinct(games)) as total_games from events
 where season = "Summer" and sports in 
(select distinct(sports) from events where season = "Summer") 
group by sports order by count(distinct(games)) desc limit 5;

#Q7


#Q8

select games,count(distinct(sports)) from events 
group by games order by count(distinct(sports)) desc limit 9;


#9

select distinct * from events where p_name in
(select distinct(p_name) from events where medal like "G%")
 and medal like "G%" order by years asc;

#10

SELECT 
(COUNT(CASE WHEN Sex = 'M' THEN 1 END) * 1.0) / COUNT(CASE WHEN Sex = 'F' THEN 1 END) AS Male_Female_Ratio
FROM events;

#11

select distinct(p_name),team,count(medal) from main
 where medal rlike "^[G]"
 group by p_name,team order by count(medal) desc
 limit 10;
 
 #12

select distinct(p_name),team,count(medal) from main
where medal rlike "^[GSB]"
group by p_name,team order by count(medal) desc
limit 10;
 
#13

select distinct(country),count(medal)
,dense_rank() over(order by count(medal) desc) from main
 where medal rlike "^[GBS]" group by country
 order by count(medal) desc limit 5; 
 
#14

SELECT distinct country,
(COUNT(CASE WHEN medal like "G%" THEN 1 END)) as 'Gold',
COUNT(CASE WHEN medal like "B%" THEN 1 END) as 'Silver',
COUNT(CASE WHEN medal like "S%" THEN 1 END) as 'Bronze'
FROM main group by country
order by (COUNT(CASE WHEN medal like "G%" THEN 1 END)) desc,
COUNT(CASE WHEN medal like "B%" THEN 1 END) desc,
COUNT(CASE WHEN medal like "S%" THEN 1 END) desc
limit 10;

#15

select distinct(country),games,
count(case when medal like "G%" then 1 end) as "Gold",
count(case when medal like "B%" then 1 end) as "Silver",
count(case when medal like "S%" then 1 end) as "Bronze"
from main
group by country,games order by games asc limit 15;

#17

select distinct(country),
count(case when medal like "B%" then 1 end) as "Bronze",
count(case when medal like "S%" then 1 end) as "Silver"
from main group by country;

#18

select country,sports,count(medal) from main
where country = "IND" and medal rlike "^[GBS]"
group by country,sports limit 1;

select country,sports,
count(case when medal rlike "^[GBS]" then 1 end) as "medals"
from main where country = "IND" group by country,sports
order by medals desc limit 1;

#19

select team,sports,games,count(medal) from main
where team = "India" and sports = "Hockey"
and medal rlike "^[GSB]" group by games;
