select C_CUSTKEY,C_NAME,C_NATIONKEY,C_ACCTBAL 
from {{source('Customer_data','Customers')}}