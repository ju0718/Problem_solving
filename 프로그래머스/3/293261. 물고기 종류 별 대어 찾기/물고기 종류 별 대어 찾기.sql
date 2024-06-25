WITH INFO AS (SELECT A.ID, B.FISH_NAME, A.LENGTH,
              ROW_NUMBER() OVER (PARTITION BY B.FISH_NAME ORDER BY A.LENGTH DESC) AS LM
              FROM FISH_INFO A
              JOIN FISH_NAME_INFO B
              ON A.FISH_TYPE = B.FISH_TYPE
)

SELECT ID, FISH_NAME, LENGTH
FROM INFO
WHERE LM = "1"
ORDER BY ID;