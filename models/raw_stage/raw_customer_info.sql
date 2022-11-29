SELECT 
    cust.C_CUSTOMER_SK,
    cust.C_CUSTOMER_ID,
    cust.C_SALUTATION,
    cust.C_FIRST_NAME,
    cust.C_LAST_NAME,
    cust.C_BIRTH_DAY,
    cust.C_BIRTH_YEAR,
    cust.C_EMAIL_ADDRESS,
    cust.C_LOGIN,
    addr.CA_ADDRESS_ID,
    addr.CA_STREET_NUMBER,
    addr.CA_STREET_TYPE,
    addr.CA_SUITE_NUMBER,
    addr.CA_CITY,
    addr.CA_COUNTY,
    addr.CA_STATE,
    addr.CA_ZIP,
    addr.CA_COUNTRY,
    addr.CA_GMT_OFFSET,
    addr.CA_LOCATION_TYPE,
    demo.CD_GENDER,
    demo.CD_MARITAL_STATUS,
    demo.CD_EDUCATION_STATUS,
    demo.CD_PURCHASE_ESTIMATE,
    demo.CD_CREDIT_RATING,
    demo.CD_DEP_COUNT 
 FROM {{ source('tpcds_sample', 'CUSTOMER') }}  cust
 INNER JOIN {{ source('tpcds_sample', 'CUSTOMER_ADDRESS') }}  addr
ON cust.C_CURRENT_ADDR_SK = CA_ADDRESS_SK
INNER JOIN {{ source('tpcds_sample', 'CUSTOMER_DEMOGRAPHICS') }}  demo
ON cust.C_CURRENT_CDEMO_SK = CD_DEMO_SK
