-- 
-- select  * from `noted-computing-279322.MissL1.Lazurde_ga_60023196_events`
-- 
-- 


select  * from (
SELECT * except(row_number)
FROM (SELECT *,ROW_NUMBER() OVER (PARTITION BY D_ga_date,D_ga_eventCategory,D_ga_eventAction,D_ga_eventLabel,D_ga_deviceCategory,D_ga_country
                                                order by _daton_batch_runtime desc) row_number
FROM `noted-computing-279322.MissL1.Lazurde_ga_60023196_events`)
WHERE row_number = 1
)

