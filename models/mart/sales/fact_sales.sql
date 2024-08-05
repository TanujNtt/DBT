select C_CUSTKEY,C_NAME,C_ACCTBAL,N_NAME,
count(O_ORDERKEY) Total_orders,sum(O_TOTALPRICE) total_order_amount,
concat(datediff(year,min(O_ORDERDATE),max(O_ORDERDATE)),' year ',datediff(month,min(O_ORDERDATE),max(O_ORDERDATE))%12,' month ',datediff(day,min(O_ORDERDATE),max(O_ORDERDATE))%30, ' days') Order_history
from {{ ref('dim_cust_ord') }} 
group by C_CUSTKEY,C_NAME,C_ACCTBAL,N_NAME