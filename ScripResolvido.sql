
--1
select nome, ano from Filmes;

--2

select nome, ano from Filmes order by Ano;

--3

select nome, ano, Duracao from Filmes where Nome = 'De volta para o futuro';

--4

select nome, ano, Duracao from Filmes where Ano = 1997;

--5
select nome, ano, Duracao from Filmes where Ano > 2000;

--6
select nome, ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

--7

select Ano ,count(*) as Quantidade from Filmes group by(Ano) order by Ano desc;

--8

select * from Atores where Genero = 'M';

--9

select * from Atores where Genero = 'F' order by(PrimeiroNome);

--10

select Filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero
on Filmes.id = FilmesGenero.IdFilme
inner join Generos
on Generos.Id = FilmesGenero.IdGenero;

--11

select Filmes.Nome, Generos.Genero from Filmes
inner join FilmesGenero
on Filmes.id = FilmesGenero.IdFilme
inner join Generos
on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério';


--12

select filmes.Nome,Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from filmes
inner join ElencoFilme
on Filmes.Id = ElencoFilme.IdFilme
inner join Atores
on Atores.Id = ElencoFilme.IdAtor
;