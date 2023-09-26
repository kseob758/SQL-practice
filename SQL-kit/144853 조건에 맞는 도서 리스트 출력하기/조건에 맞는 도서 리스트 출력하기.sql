select BOOK_ID, date_format(PUBLISHED_DATE, '%Y-%m-%d')
from BOOK
where extract(year from PUBLISHED_DATE) = '2021'
and CATEGORY = '인문'
order by PUBLISHED_DATE
