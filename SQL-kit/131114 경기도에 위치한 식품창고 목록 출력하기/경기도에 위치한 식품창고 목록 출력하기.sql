-- ifnull 사용법

select WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, ifnull(FREEZER_YN, 'N') FREEZER_YN
from FOOD_WAREHOUSE
where left(ADDRESS, 3) = '경기도'
order by WAREHOUSE_ID
