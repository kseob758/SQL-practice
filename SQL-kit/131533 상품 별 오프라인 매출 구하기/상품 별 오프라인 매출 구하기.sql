-- join 활용
SELECT PRODUCT_CODE, sum(sales_amount * price) sales
from OFFLINE_SALE t1 left join PRODUCT t2
on t1.product_id = t2.product_id
group by PRODUCT_CODE
order by sales desc, PRODUCT_CODE
