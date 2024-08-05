select c.C_CUSTKEY,c.C_NAME,c.C_ACCTBAL,n.N_NAME,
o.O_ORDERKEY,o.O_TOTALPRICE,o.O_ORDERDATE
from {{ ref('stg_customer') }} c
inner join {{ ref('stg_order') }} o on c.C_CUSTKEY=o.O_CUSTKEY
INNER JOIN {{ ref('stg_nation') }} n ON c.C_NATIONKEY=n.N_NATIONKEY