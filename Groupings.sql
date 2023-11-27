select GeoID, sum(Amount), avg(Amount), sum(Boxes)
from sales
group by GeoID;

select g.geo, sum(Amount), avg(Amount), sum(Boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.geo;

select pr.Category, p.Team, sum(Boxes), sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.team <> ''
group by pr.category, p.team
order by pr.category, p.team;

select pr.Product, sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid = s.pid
group by pr.product
order by `Total Amount` desc
limit 10;