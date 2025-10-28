use netflix;


-- Country-wise Subscription with MAX Revenue
SELECT 
    c.Country_Name AS country,
    s.Subscription_Type,
    MAX(u.Revenue) AS MAX_Revenue
FROM user_data u
JOIN country c ON u.Country_ID = c.Country_ID
JOIN subscription s ON u.Subscription_ID = s.Subscription_ID
GROUP BY c.Country_Name, s.Subscription_Type;


-- User Count and Revenue by Device( tablet & laptop )
SELECT 
    COUNT(u.User_ID) AS user_count,
    SUM(u.Revenue) AS Total_revenue,
    d.Device 
FROM user_data u
JOIN device d ON u.Device_ID = d.Device_ID
WHERE d.Device IN ('Tablet', 'Laptop')
GROUP BY d.Device
ORDER BY Total_revenue asc;


-- Age Statistics & Revenue by Device
SELECT 
    AVG(u.Age) AS Avg_Age,
    MAX(u.Age) AS max_Age,
    MIN(u.Age) AS min_Age,
    SUM(u.Revenue) AS Total_revenue,
    d.Device
FROM user_data u
JOIN device d ON u.Device_ID = d.Device_ID
GROUP BY d.Device;


-- Age Statistics & Revenue by Device and Gender
SELECT 
    AVG(u.Age) AS Avg_Age,
    MAX(u.Age) AS max_Age,
    MIN(u.Age) AS min_Age,
    SUM(u.Revenue) AS Total_revenue,
    d.Device,
    g.Gender
FROM user_data u
JOIN device d ON u.Device_ID = d.Device_ID
JOIN gender g ON u.Gender_ID = g.Gender_ID
GROUP BY d.Device, g.Gender;

   


