-- https://programmers.co.kr/learn/courses/30/lessons/62284
-- 우유와 요거트가 담긴 장바구니

SELECT A.CART_ID
FROM (
    SELECT DISTINCT CART_ID, NAME
    FROM CART_PRODUCTS
    WHERE NAME = 'Milk' OR NAME = 'Yogurt'    
) A
GROUP BY CART_ID
HAVING COUNT(CART_ID) >= 2
ORDER BY CART_ID
;


SELECT A.CART_ID
FROM (
    SELECT DISTINCT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Milk'
) A
JOIN (
    SELECT DISTINCT CART_ID
    FROM CART_PRODUCTS
    WHERE NAME = 'Yogurt'
) B
ON A.CART_ID = B.CART_ID
ORDER BY CART_ID;