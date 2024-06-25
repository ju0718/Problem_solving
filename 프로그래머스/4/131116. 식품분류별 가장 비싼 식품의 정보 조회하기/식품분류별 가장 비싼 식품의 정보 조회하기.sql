WITH CATEGORY_NM AS(SELECT CATEGORY,
                            PRICE,
                            PRODUCT_NAME,
                    ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC)AS PRICE_RANKS
FROM FOOD_PRODUCT)
SELECT CATEGORY, 
        PRICE AS MAX_PRICE, 
        PRODUCT_NAME 
FROM CATEGORY_NM
WHERE PRICE_RANKS = 1
AND CATEGORY IN ("과자", "국", "김치", "식용유")
ORDER BY MAX_PRICE DESC;