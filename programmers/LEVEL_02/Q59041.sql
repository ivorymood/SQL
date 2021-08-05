-- https://programmers.co.kr/learn/courses/30/lessons/59041
-- 동명 동물 수 찾기

SELECT N.NAME, N.NAME_COUNT
FROM 
(
    SELECT NAME, COUNT(*) NAME_COUNT
    FROM ANIMAL_INS
    WHERE NAME IS NOT NULL 
    AND NAME != ""
    GROUP BY NAME
) N
WHERE NAME_COUNT >= 2
ORDER BY NAME;