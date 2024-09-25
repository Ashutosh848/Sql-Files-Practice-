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

