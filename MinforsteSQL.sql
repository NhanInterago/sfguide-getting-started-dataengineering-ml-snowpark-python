

with
    kunde2022 as (
        select a.kundenummer, count(distinct a.vareean14_nr) as ant_varer
        from poc_illuminate.landing.wn140t_gsalg_utsolgt_svinn a
        where a.kundenummer = 833079 and a.uke = 202250
        group by a.kundenummer
    ),
    kunde2023 as (
        select b.kundenummer, count(distinct b.vareean14_nr) as ant_varer
        from poc_illuminate.landing.wn140t_gsalg_utsolgt_svinn b
        where b.kundenummer = 833079 and b.uke = 202320
        group by b.kundenummer
    )
select *
from kunde2022, kunde2023
where kunde2022.kundenummer = kunde2023.kundenummer
;