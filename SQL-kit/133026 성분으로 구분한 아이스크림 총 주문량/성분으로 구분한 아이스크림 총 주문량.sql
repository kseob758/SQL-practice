SELECT B.INGREDIENT_TYPE, SUM(A.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF A JOIN ICECREAM_INFO B
ON A.FLAVOR = B.FLAVOR
GROUP BY 1
ORDER BY 2
