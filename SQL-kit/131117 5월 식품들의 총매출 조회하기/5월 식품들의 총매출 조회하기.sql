SELECT s.PRODUCT_ID,
    s.PRODUCT_NAME,
    s.PRICE * e.TOTAL_AMOUNT AS TOTAL_SALES
FROM FOOD_PRODUCT s JOIN
    (
        -- 1. 5월 생산된 제품을 찾고, PRODUCT_ID로 묶기
        SELECT a.PRODUCT_ID, SUM(a.AMOUNT) AS TOTAL_AMOUNT
        FROM FOOD_ORDER a
        WHERE a.PRODUCE_DATE BETWEEN '2022-05-01' AND '2022-05-31'
        GROUP BY a.PRODUCT_ID
    ) e
    ON s.PRODUCT_ID = e.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, s.PRODUCT_ID;
