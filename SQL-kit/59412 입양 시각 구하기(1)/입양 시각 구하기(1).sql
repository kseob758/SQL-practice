-- MYSQL에서는 함수 HOUR, MINUITE, SECOND, YEAR, MONTH, DAY 사용 가능
select HOUR(DATETIME) HOUR, count(ANIMAL_ID) COUNT
from ANIMAL_OUTS
where extract(hour from DATETIME) between 9 and 19
group by HOUR
order by HOUR
