-- create schema cars; 
show databases;
use cars;

-- Read Data --  
select * from carsProject;

-- Total cars: to get total count of cars -- 
select count(*) from carsProject; #7927

-- Manager asked the employee how many cars will be there in 2023 -- 
select count(*) from carsProject where year = 2023; #6

-- Manager asked the employee how many cars is available in 2020, 2021, 2022
select count(*) from carsProject where year in (2020, 2021, 2022) group by year;

-- Client asked me to print total of all cars by year.
select year, count(*) from carsProject group by year;

-- Client asked to car dealer agent how many diesel cars will be there in 2020 --  
select count(*) as "Diesel_Cars" from carsProject where year = 2020 and fuel = "Diesel";

-- Client asked to car dealer agent how many diesel cars are there by year--  
select year, count(*) as "Diesel_Cars" from carsProject where fuel = "Diesel" group by year;

-- Client asked to car dealer agent how many petrol cars will be there in 2020 --  
select count(*) as "Petrol_Cars" from carsProject where year = 2020 and fuel = "Petrol";

-- Client asked to car dealer agent how many Petrol cars are there by year--  
select year, count(*) as "Petrol_Cars" from carsProject where fuel = "Petrol" group by year;

-- Client asked to car dealer agent how many CNG cars will be there in 2020 --  
select count(*) as "CNG_Cars" from carsProject where year = 2020 and fuel = "CNG";

-- Client asked to car dealer agent how many CNG cars are there by year--  
select year, count(*) as "CNG_Cars" from carsProject where fuel = "CNG" group by year;

-- Manager said there were more than 100 cars in a given year. Which year had more than 100 cars?
select year, count(*) from carsProject group by year having count(*)>100;

-- Manager said there were less than 100 cars in a given year. Which year had less than 100 cars?
select year, count(*) from carsProject group by year having count(*)<100;

-- Manager said to the employee all cars count details between 2015 to 2023 -- 
select count(*) from carsProject where year between 2015 and 2023; 


-- END -- 





