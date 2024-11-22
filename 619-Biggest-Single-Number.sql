SELECT 
    MAX(num) AS num
FROM (
    SELECT 
        num,
        COUNT(*) AS count
    FROM 
        MyNumbers
    GROUP BY 
        num
    HAVING 
        COUNT(*) = 1
) AS SingleNumbers;
