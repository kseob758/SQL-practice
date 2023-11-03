-- MySQL에서의 YEAR, MONTH 추출
select MCDP_CD 진료과코드, count(APNT_YMD) 5월예약건수
from APPOINTMENT 
where YEAR(APNT_YMD) = 2022 and MONTH(APNT_YMD) = 5
group by 진료과코드
order by 5월예약건수, 진료과코드
