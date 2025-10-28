-- Assignment 1 : Netflix Users

use netflix;

-- 1. Average monthly revenue per country
SELECT 
    c.Country_Name,
    AVG(u.Revenue) AS Avg_Monthly_Revenue
FROM user_data u
JOIN country c ON u.Country_ID = c.Country_ID
GROUP BY c.Country_Name;

-- 2. How many users per device?
SELECT 
    d.Device,
    COUNT(u.User_ID) AS user_Count
FROM user_data u
JOIN Device d ON u.Device_ID = d.Device_ID
GROUP BY d.Device;

-- 3. Retrieve every user LMP (Last Monthly Payment)
SELECT User_ID , Last_Payment_Date
FROM user_data;

-- 4. Minimum Age of User per gender
SELECT 
    g.Gender,
    MIN(u.Age) AS Min_Age
FROM user_data u
JOIN gender g ON u.Gender_ID = g.Gender_ID
GROUP BY g.Gender;

-- 5. Retrieve all user details where Age > Average Age of users
SELECT *
FROM user_data
WHERE Age > (SELECT AVG(Age) FROM user_data);



-- Data model (Join) questions

-- 6. Count the total number of users for Tablet and Laptop
SELECT 
    d.Device,
    COUNT(u.User_ID) AS num_of_user
FROM user_data u
JOIN device d ON u.Device_ID = d.Device_ID
WHERE d.Device IN ('Tablet', 'Laptop')
GROUP BY d.Device;

-- 7. Number of users per country where Age between 30 and 40
SELECT 
    c.Country_Name,
    COUNT(u.User_ID) AS num_of_Count
FROM user_data u
JOIN country c ON u.Country_ID = c.Country_ID
WHERE u.Age BETWEEN 30 AND 40
GROUP BY c.Country_Name;

-- 8. Total monthly revenue for Premium and Standard
SELECT 
    s.Subscription_Type,
    SUM(u.Revenue) AS Total_Revenue
FROM user_data u
JOIN subscription s ON u.Subscription_ID = s.Subscription_ID
WHERE s.Subscription_Type IN ('Premium', 'Standard')
GROUP BY s.Subscription_Type;
