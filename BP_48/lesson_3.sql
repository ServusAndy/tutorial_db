SELECT `model`, `price`, CONCAT(`carCode`,' - ',`manufc`)
FROM `cars`;

SELECT `model`,
    `price`,
     CONCAT(`carCode`,' - ',`manufc`) AS Manufacture
FROM `cars`
WHERE CONCAT(`carCode`,' - ',`manufc`) = 'HND - Honda';

SELECT `model`,
    `price`,
     CONCAT(`carCode`,' - ',`manufc`) AS Manufacture
FROM `cars`
ORDER BY 3;

-- ./mysqldump -u root -p --databases bp_48 > filepath
-- ./mysql -u root -p -t -v < filepath