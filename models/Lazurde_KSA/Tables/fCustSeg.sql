select * from (
select e.*, f.category_L1_id ,'Lazurde_KSA' Halo_Country
from
(select c.*,d.disc_cat_id from
(select a.*, b.channel_id from
(select x.*,y.orders,round(y.revenue) revenue from
(select user_id, First_pur_date, last_pur_date,cust_segment_id from
`noted-computing-279322.halo_1_1_lazurdeksa.fCustSegments`)x
left join
(select user_id, orders, revenue from
`noted-computing-279322.halo_1_1_lazurdeksa.fCustInsights` )y
on x.user_id = y.user_id)a
left join
(select user_id, cast(channel_id as string) channel_id
from `noted-computing-279322.halo_1_1_lazurdeksa.fCustChannel` where channel_rank =1)b
on a.user_id = b.user_id)c
left join
(select user_id, cast(disc_cat_id as string) disc_cat_id
from `noted-computing-279322.halo_1_1_lazurdeksa.fCustDisccategory` where disc_cat_rank =1)d
on c.user_id = d.user_id)e
left join
(select user_id, category_L1_id
from `noted-computing-279322.halo_1_1_lazurdeksa.fCustProductcategory` where Productcategory_rank =1)f
on e.user_id = f.user_id
)