SELECT O.*, 
CONCAT('#',O.order_id, ' (', U.firstname, ' ', U.lastname, ')') as order_id_fullname,  
CONCAT(U.firstname, ' ', U.lastname) as user_fullname, 
U.firstname AS user_firstname, U.lastname AS user_lastname 
FROM `order` AS O  
INNER JOIN `user` AS U ON O.user_id = U.user_id


SELECT U.*, 
CONCAT('#',U.user_id, ' (', U.firstname, ' ', U.lastname, ')') as user_id_fullname,
CONCAT(U.firstname, ' ', U.lastname) as user_fullname  
FROM `user` AS U

SELECT 0 AS F1, 'on process' AS F2
UNION ALL SELECT 1, 'on delivery'
UNION ALL SELECT 2, 'completed'

SELECT B.*,  CONVERT(GROUP_CONCAT( DISTINCT A.name ), CHAR) AS authors 
FROM book B 
LEFT JOIN book_author BA ON B.book_id = BA.book_id  
LEFT JOIN author A ON BA.author_id = A.author_id 
GROUP BY B.book_id