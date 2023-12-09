SELECT DISTINCT(C.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR C JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
ON C.CAR_ID = H.CAR_ID
WHERE CAR_TYPE = '세단'
AND LEFT(start_date, 7) = '2022-10'
ORDER BY 1 DESC
