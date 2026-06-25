{{ config(materialized='table') }}

SELECT 1 AS ID
UNION 
SELECT 2 AS ID
