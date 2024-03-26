– find top 10 movies that made the highest income 
select f.title film_title, sum (p.amount) income_made from film f
inner join inventory i 
on f.film_id=i.film_id 
inner join rental r 
on i.inventory_id=r.inventory_id 
inner join payment p 
on r.rental_id=p.rental_id 
group by f.title 
order by sum (p.amount) desc
limit 10 

	
