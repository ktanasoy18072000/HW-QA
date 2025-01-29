use qauto;
alter table carbrands
change column brandnames title varchar(255) not null;
alter table carbrands
rename to car_brands


drop table userphone;
alter table users
add firstName varchar(255) not null, 
add lastName varchar(255) not null,
add password int not null;  

alter table cars
add initialMilleage int not null,
add userId int not null,
add foreign key (userId) references users(id) ;

select* from car_brands;

insert into car_models (carbrandID, title)
values
( 1, 'Tesla Cybertrack'),
(2, 'BMW  X5 Competition'),
(3, 'Opel Insignia'),
(4, 'Nissan Qashqai');

select* from users 

insert into users (firstName, lastName, email, password)
values
('Karyna', 'Tanasoi', 'ktanasoy@gmail.com', 12345),
('Taras', 'Shevchenko', 'shevchenko@gmail.com', 34567),
('Anna', 'Webster', 'webster@ukr.net', 76543),
('Elena', 'Smith', 'smith@icloud.com', 56789);

alter table cars
change column carBrand_Id carBrandId int not null;

alter table cars
change column carModelid carModelId int not null;

alter table cars
change column initialMilleage initialMileage int not null;

insert into cars (userId, carBrandId, carModelId, mileage, initialMileage)
values
(1,1,1, 10000, 5000),
(2,2,2, 20000,10000),
(3,3,3,30000,15000),
(4,4,4, 5500, 3000);

select* from cars 











