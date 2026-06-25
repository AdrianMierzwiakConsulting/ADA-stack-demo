WITH moj_test_2 AS (
  /* Customer table based on Snowflake sample data. */
  SELECT
    *
  FROM {{ ref('my_new_project', 'Moj_test_2') }}
), aggregate_1 AS (
  SELECT
    C_NAME,
    SUM(C_ACCTBAL) AS sum_C_ACCTBAL,
    COUNT(C_CUSTKEY) AS count_C_CUSTKEY
  FROM moj_test_2
  GROUP BY
    C_NAME
), untitled_3_sql AS (
  SELECT
    *
  FROM aggregate_1
)
SELECT
  *
FROM untitled_3_sql