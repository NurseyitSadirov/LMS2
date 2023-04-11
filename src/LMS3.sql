CREATE TABLE cars
(
    id            SERIAL PRIMARY KEY,
    brand         VARCHAR(50)   NOT NULL,
    model         VARCHAR(50)   NOT NULL,
    year_of_issue int           NOT NULL,
    price         DECIMAL(8, 2) NOT NULL,
    color         VARCHAR(50)   NOT NULL
);
insert into cars (brand, model, year_of_issue, price, color)
values ('Chevrolet', 'Express 2500', 1998, 34650.37, 'Khaki');
insert into cars (brand, model, year_of_issue, price, color)
values ('GMC', 'Sierra 3500', 2011, 78888.61, 'Maroon');
insert into cars (brand, model, year_of_issue, price, color)
values ('Nissan', 'Quest', 2006, 97402.51, 'Red');
insert into cars (brand, model, year_of_issue, price, color)
values ('Audi', 'TT', 2004, 46828.97, 'Khaki');
insert into cars (brand, model, year_of_issue, price, color)
values ('Toyota', 'Tacoma', 1998, 85491.51, 'Red');
insert into cars (brand, model, year_of_issue, price, color)
values ('Mercedes-Benz', 'SL-Class', 2008, 88509.36, 'Aquamarine');
insert into cars (brand, model, year_of_issue, price, color)
values ('Ford', 'F350', 2008, 56821.13, 'Puce');
insert into cars (brand, model, year_of_issue, price, color)
values ('Lincoln', 'MKZ', 2012, 26718.95, 'Teal');
insert into cars (brand, model, year_of_issue, price, color)
values ('Kia', 'Sportage', 1999, 54196.82, 'Teal');
insert into cars (brand, model, year_of_issue, price, color)
values ('Suzuki', 'Sidekick', 1998, 26352.88, 'Blue');
insert into cars (brand, model, year_of_issue, price, color)
values ('Saab', '900', 1988, 71842.49, 'Indigo');
insert into cars (brand, model, year_of_issue, price, color)
values ('Toyota', 'Corolla', 2001, 38602.3, 'Red');
insert into cars (brand, model, year_of_issue, price, color)
values ('Ford', 'Explorer Sport Trac', 2008, 14719.25, 'Green');
insert into cars (brand, model, year_of_issue, price, color)
values ('Land Rover', 'Discovery Series II', 2000, 41037.54, 'Violet');
insert into cars (brand, model, year_of_issue, price, color)
values ('Ford', 'Club Wagon', 1992, 47831.54, 'Fuscia');
insert into cars (brand, model, year_of_issue, price, color)
values ('Studebaker', 'Avanti', 1963, 95937.82, 'Yellow');
insert into cars (brand, model, year_of_issue, price, color)
values ('Mercury', 'Mountaineer', 2003, 76816.22, 'Khaki');
insert into cars (brand, model, year_of_issue, price, color)
values ('Mazda', 'CX-5', 2013, 17658.24, 'Red');
insert into cars (brand, model, year_of_issue, price, color)
values ('Chevrolet', 'Corvette', 1967, 57882.4, 'Maroon');
insert into cars (brand, model, year_of_issue, price, color)
values ('Mitsubishi', 'Truck', 1988, 34784.67, 'Teal');
insert into cars (brand, model, year_of_issue, price, color)
values ('Nissan', 'Maxima', 2008, 5930.37, 'Pink');
insert into cars (brand, model, year_of_issue, price, color)
values ('Cadillac', 'Seville', 1992, 95674.99, 'Purple');
select *
from cars;

select brand, model, price
from cars;
select count(*)
from cars;
select *
from cars
where brand = 'Mazda';
select *
from cars
where color in ('Yellow', 'Blue');
select *
from cars
where year_of_issue > 2000
  and year_of_issue < 2010;
select count(*)
from cars
where brand = 'Chevrolet';
select avg(year_of_issue)
from cars;
select *
from cars
where brand in ('Audi', 'Toyota ', 'Ford', 'Kia');
select *
from cars
where brand like 'T%';
select *
from cars
where model ilike '%e';
select *
from cars
where brand like '_____';
select sum(price)
from cars
where brand = 'Mercedes-Benz';
select max(price)
from cars;
select min(price)
from cars;
select *
from cars
where brand <> 'Toyota';
select *
from cars
order by price limit 10;
select *
from cars
order by year_of_issue limit 15
offset 5;
select *
from cars
where cars.year_of_issue not in (select year_of_issue from cars where year_of_issue between 1995 and 2005);
select color, count(*) as total
from cars
group by color
order by total desc limit 1;
