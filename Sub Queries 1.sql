select * from games where p_name in (select P_name from games
                               where years = 2008 and 
							Height>136.3136 and medal = "Gold") and years = 2008;

select * from games where p_name in (select p_name from games 
where years = 2016 and sport = 'Basketball' and 
weight<87.5552 and medal rlike "^[GSB]") and years = 2016;


select * from games where p_name in (select p_name from games
									   where sport = "Swimming")
									 and years in (2008,2016) and medal rlike "^[GBS]";

select * from games where country in(SELECT distinct(country)
FROM games
WHERE medal rlike"[^GBS]"
GROUP BY country, years
HAVING COUNT(medal) > 50)
and years = 2008;


select * from games where p_name in (SELECT p_name
FROM games
GROUP BY p_name
HAVING COUNT(DISTINCT sport) > 1) and years = 2016 and medal rlike"^[GBS]";
use pro;
54.3075
54.1655
select avg(weight) from games where Sex = "M";
select avg(weight) from games where Sex = "F";

select * from games where weight >(select avg(weight) from games where Sex = "M")-(select avg(weight) from games where Sex = "F");

