CREATE OR REPLACE TABLE  customers_git AS
SELECT 
    ABS(RANDOM()) AS CUSTOMER_ID,
    FAKE('en_US','first_name',null)::varchar AS FIRST_NAME,
    FAKE('en_US','last_name',null)::varchar AS LAST_NAME,
    FAKE('en_US','phone_number',null)::varchar AS PHONE_NO,
    FAKE('en_US','free_email',null)::varchar AS EMAIL,
    FAKE('en_US','state_abbr',null)::varchar AS STATE
FROM TABLE(GENERATOR(ROWCOUNT => 1000));