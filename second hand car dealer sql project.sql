SELECT * FROM cars.car;


use cars;


--- ==========- Query 1 Read car data===========================
select*from car; 


-- --======= Query 2 total cars :to get  count of total records=======
select count(*) from car;

-- ============Query 3 The manager asked the employee .how many cars will be available in 2023?======
select count(*) from car where year=2023;

-- ==========Query 4 The manager asked the employee how many cars is available in 2020,2021,2022==========
select count(*)from car where year=2020;#74
select count(*)from car where year=2021;#7
select count(*)from car where year=2022;#7

-- --========== Group by use krlo coz query a dsdo ki kene count a cars year wise=============
select count(*) from car where  year in(2020,2021,2022) group by year;  #note:ehde jo output ae a oh uper de de nal verify krlio this is shortcut

-- --========== Query5 -Client asked me to print the total of all cars by year. I don't see all the details=====
select year,count(*) from car group by year;

-- --==========Query 6  client asked to car dealer agent.how many diesel cars will be there in 2020?==========
select count(*) from car where year=2020 and fuel="Diesel";

-- =========Query7 client requested a car dealer agent How many petrol cars will be there in 2020?========
select count(*) from car where year=2020 and fuel="petrol"; #51

-- ==========Query 8 The manager told the employee to give a print All the fuel car (petrol,diesel,and CNG come by all year?============
select  year,count(*) from car  where  fuel="petrol" group by year;
select  year,count(*) from car  where  fuel="diesel" group by year;
select  year,count(*) from car  where  fuel="CNG" group by year;

---- ========== Query 9 Manager said there were more than 100 cars in a given year,which year had more than 100 cars?===============
select year,count(*) from car group by year having count(*)>100;
select year,count(*) from car group by year having count(*)<10;

-- ==========Query 10 Manager said to the employee all cars count details between 2015 and 2023?===============
select count(*) from car where year between 2015 and 2023;

-- ==========Query 11 The manager said to the employee All cars details between 2015 to 2023 we need complete list?==========
select*from car where  year between 2015 and 2023;



