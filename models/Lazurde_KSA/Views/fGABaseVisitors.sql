
select  * from (
SELECT * except(row_number)
FROM (SELECT *,ROW_NUMBER() OVER (PARTITION BY D_ga_date,D_ga_userType order by _daton_batch_runtime desc) row_number
      FROM `noted-computing-279322.MissL1.Lazurde_ga_60023196_users`)
WHERE row_number = 1
)

