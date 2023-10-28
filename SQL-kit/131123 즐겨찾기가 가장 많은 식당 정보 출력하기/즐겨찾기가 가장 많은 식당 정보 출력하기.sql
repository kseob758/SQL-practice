-- 음식 종류별 즐겨찾기 수가 가장 많은 식당
SELECT A.FOOD_TYPE, A.REST_ID, A.REST_NAME, A.FAVORITES
FROM REST_INFO A JOIN
(SELECT FOOD_TYPE, MAX(FAVORITES) MAXFAV
FROM REST_INFO
GROUP BY FOOD_TYPE) B
ON A.FOOD_TYPE = B.FOOD_TYPE
AND A.FAVORITES = B.MAXFAV
ORDER BY 1 DESC
