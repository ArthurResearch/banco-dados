create database Clinica;
show databases;
use Clinica;
create table medico(
	codMed int primary key,
    nomeMed varchar(40) not null,
    dataNasc date not null,
    cpf char(11),
    cidade varchar(30) not null,
    especialidade varchar(30) not null
);

create table paciente(
	codPac int primary key,
    nomePac varchar(40) not null,
    dataNasc date not null,
    cpf char(11) unique,
    cidade varchar(30) not null
);

create table consulta(
	codMed int not null,
    codPac int not null,
    dia date not null,
    hora time not null,
    primary key (codMed, codPac, dia, hora),
    foreign key (codMed) references medico (codMed) on delete cascade on update cascade,
    foreign key (codPac) references paciente (codPac) on delete cascade on update cascade
);

describe medico;
describe paciente;
show tables;

alter table medico add crm int;
alter table medico drop crm;
alter table medico change cidade cidadeNasc varchar(30);
alter table paciente modify cpf varchar(11);

describe medico;

insert into medico values(41, 'Luís miguel da Silva Pacheco', 16/04/2010, '32198745610', 'Foz do Iguaçu', 'Programação');

insert into medico values(1, 'João', '1984-06-28', '10000100000', 'Florianópolis', 'Ortopedia');
insert into medico values(2, 'Maria', '1945-11-08', '10000100009', 'Foz do Iguaçu', 'Pediatra');
insert into medico values(3, 'João', '1984-06-28', '10000100000', 'Florianópolis', 'Ortopedia');
insert into medico values(4, 'Maria', '1970-07-13', '11100100000', 'Blumenau', 'Traumatologia');
insert into medico values(5, 'Pedro', '1956-11-25', '10001101000', 'Porto Velho', 'Pediatra');
insert into medico values(6, 'Carlos', '1985-02-07', '11110100000', 'joinville', 'Ortopedia');
insert into medico values(7, 'Marcia', '1945-08-15', '10110100000', 'Fortaleza', 'Neurologia');
insert into medico values(8, 'Luana', '1975-04-25', '01001011111', 'Rio Branco', 'Oftalmologia');

insert into paciente values(1, 'Ana', '1978-09-13', '22010005000', 'Florianópolis');
insert into paciente values(2, 'Paulo', '1940-03-17', '81101000400', 'Porto Velho');
insert into paciente values(3, 'Lucia', '1957-06-24', '17910100000', 'Blumenau');
insert into paciente values(4, 'Carlos', '2001-10-08', '12510100000', 'joinville');
insert into paciente values(5, 'Luiz', '2000-08-14', '14780111400', 'Fortaleza');
insert into paciente values(6, 'Maurício', '1980-01-01', '47855499635', 'Rio Branco');

insert into consulta values(1, 1, '2026-05-12', '14:00');
insert into consulta values(1, 4, '2026-05-13', '14:00');
insert into consulta values(8, 1, '2026-10-13', '14:00');
insert into consulta values(2, 2, '2026-03-13', '14:00');
insert into consulta values(2, 3, '2025-08-14', '14:00');
insert into consulta values(7, 4, '2024-08-14', '14:00');
insert into consulta values(3, 6, '2024-05-19', '14:00');
insert into consulta values(3, 3, '2025-04-12', '14:00');
insert into consulta values(5, 4, '2025-04-19', '14:00');
insert into consulta values(6, 5, '2025-04-20', '14:00');
insert into consulta values(4, 4, '2024-10-22', '14:00');
truncate table consulta;

select * from medico;

update medico set especialidade = 'Dermatologia' where codMed = 5;

select * from paciente;
