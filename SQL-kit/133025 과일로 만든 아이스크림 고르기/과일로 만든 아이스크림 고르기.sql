-- join 활용
SELECT t1.flavor
from FIRST_HALF t1 left join ICECREAM_INFO t2
on t1.flavor = t2.flavor
where TOTAL_ORDER > 3000
and INGREDIENT_TYPE like 'fruit%'
order by TOTAL_ORDER desc
