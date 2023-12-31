SELECT YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    COUNT(DISTINCT(I.USER_ID)) AS PUCHASED_USERS,
    ROUND(COUNT(DISTINCT(I.USER_ID))
          / (SELECT COUNT(*) FROM USER_INFO WHERE YEAR(JOINED) = '2021'),1) AS PUCHASED_RATIO
FROM ONLINE_SALE S JOIN USER_INFO I
    ON S.USER_ID = I.USER_ID
WHERE YEAR(I.JOINED) = '2021'
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH
