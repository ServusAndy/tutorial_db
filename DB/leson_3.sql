SELECT `model`,`price`, CONCAT(`carCode`,' - ',`manufc`) AS `Manufracture` FROM `cars`
WHERE CONCAT(`carCode`,' - ',`manufc`) = 'HND - Honda';



SELECT `model`,`price`, CONCAT(`carCode`,' - ',`manufc`) AS `Manufracture` FROM `cars`
ORDER BY 3;