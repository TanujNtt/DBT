select O_ORDERKEY,O_CUSTKEY,O_TOTALPRICE,O_ORDERDATE 
from {{source("Customer_data","Orders")}}