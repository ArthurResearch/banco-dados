use cinema;

select personagem.nomePersonagem
from ator inner join personagem on ator.codAtor = personagem.codAtor
where ator.nomeReal = 'Maria da Silva';

select filme.nomeFilme, personagem.nomePersonagem
from ator inner join personagem on personagem.codAtor = ator.codAtor inner join filme on personagem.codFilme = filme.codFilme
where ator.codAtor = 'A17';

use clinica;

select paciente.nomePac, consulta.dia
from paciente inner join consulta on paciente.codPac = consulta.codPac
where consulta.dia like '%2025-04-%';
