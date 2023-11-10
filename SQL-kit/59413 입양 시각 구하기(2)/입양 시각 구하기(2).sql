-- SET을 활용한 변수 사용
SET @h = -1;

SELECT (@h := @h + 1) AS HOUR,
    (SELECT COUNT(*) 
     FROM animal_outs 
     WHERE HOUR(datetime) = @h) AS COUNT
FROM animal_outs
WHERE @h < 23
