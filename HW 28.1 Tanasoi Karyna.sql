use `hillel-qauto-buggy`
select * from users; 
SELECT * FROM users WHERE "email" LIKE '%am%';

SELECT MAX("expense") FROM cars WHERE "brand" = 'Audi';

SELECT COUNT("model") AS count_models, "brand_id" AS "car_id" 
FROM cars 
WHERE "brand" IN ('Audi', 'BMW') 
GROUP BY "brand_id";

SELECT "model" AS "car_model", "brand" AS "car_brand", COUNT("users.id") AS user_count 
FROM cars 
GROUP BY "model", "brand";

 
select * from cars
inner join users on cars.userId=users.Id;
select count (cars.id), users.email from cars
inner join users on cars.userid=users.id group by cars.userid having count (cars.id)>0 ;

select count(cars.id) as lichilnik, users.email, name, lastname from cars
inner join users on cars.userid=users.id
inner join user_profiles on user_profiles.userid=users.id
group by cars.userid having count (cars.id)>0 order by lichilnik desc;


