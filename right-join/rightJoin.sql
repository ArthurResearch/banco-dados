select p.nome, r.pontos from resultados_corrida r right join pilotos p on r.piloto_id = p.id where r.gp = 'GP de Interlagos';

select f.nome as fabricante, e.nome as equipe from equipes e right join fabricantes_motor f on e.motor_id = f.id;

select * from equipes e right join fabricantes_motor f on e.motor_id = f.id where e.motor_id is null or f.id is null;
