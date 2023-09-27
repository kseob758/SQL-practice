-- date_format 사용으로 포맷 맞춰주기
SELECT MEMBER_ID, MEMBER_NAME, GENDER, date_format(DATE_OF_BIRTH, '%Y-%m-%d')  DATE_OF_BIRTH
from MEMBER_PROFILE
where GENDER = 'W' and EXTRACT(MONTH from DATE_OF_BIRTH) = 3 and TLNO is not NULL
order by MEMBER_ID
