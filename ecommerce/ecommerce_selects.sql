use commerce;

select * from clients
order by Fname;

select COUNT(*) from product
having valor > 100;

select count(idOrder)
from orders;

select * from productOrder
where poStatus = 'Sem Estoque';

