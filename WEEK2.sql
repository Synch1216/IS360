#1
select * from planes where speed is not null;

select count(tailnum) from planes;
#3322 planes with talnumbers listed. 


#2
select sum(distance) as 'sum' from flights where month = 1;
# For all FLIGHTS in January the resulting distance is 27188805
select sum(distance) as 'thesum' from flights where month = 1 and tailnum is null;
    
# The total distance is  81763 when tailnum is null

#3
select manufacturer sum(distance) from flights f inner join planes p where p.tailnum= f.tailnum and f.month= 7 and day=5 group by manufacturer; 

select manufacturer sum(distance) from flights f left outer join planes p where p.tailnum= f.tailnum and f.month= 7 and day=5 group by manufacturer;

#4
select manufacturer from planes p left join weather w on f.origin= w.origin, left join airports a on f.tailnum= p.tailnum group by f.origin;