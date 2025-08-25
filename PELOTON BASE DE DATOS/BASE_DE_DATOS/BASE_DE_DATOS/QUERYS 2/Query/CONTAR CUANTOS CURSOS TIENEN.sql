select cur_catalogo,  count(*) from dcur where cur_curso in(710,711,712) and cur_puesto='SAT'
 group by 1
having count(*) > 1

select * from dcur where cur_catalogo = 441238