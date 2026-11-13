use mercado;

select * from cliente;

select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor asc;

select cliente.nome from cliente order by cliente.nome asc;

select cliente.nome, loja.valor from cliente left join loja on cliente.id_cliente = loja.id_cliente order by loja.valor desc limit 1;

select nome, idade from cliente order by idade desc limit 1;
