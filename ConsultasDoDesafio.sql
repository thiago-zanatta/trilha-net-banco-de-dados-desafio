--1
Select
  Nome, 
  Ano 
From 
  Filmes

--2

Select
  Nome, 
  Ano 
From 
  Filmes
Order By
  Ano

--3
Select
  Nome, 
  Ano,
  Duracao
From 
  Filmes
Where 
  Nome = 'De Volta para o Futuro'

--4
Select
  Nome, 
  Ano,
  Duracao
From 
  Filmes
Where 
  Ano = 1997

--5
Select
  Nome, 
  Ano,
  Duracao
From 
  Filmes
Where 
  Ano > 2000

--6
Select
  Nome, 
  Ano,
  Duracao
From 
  Filmes
Where 
  Duracao > 100 And
  Duracao < 150
Order By 
  Duracao

--7
Select
  Ano,
  Count(*) As Quantidade
From 
  Filmes
Group By
  Ano 
Order By 
  2 Desc

--8
Select
  Id,
  PrimeiroNome,
  UltimoNome
From 
  Atores
Where
  Genero = 'M'

--9
Select
  Id,
  PrimeiroNome,
  UltimoNome
From 
  Atores
Where
  Genero = 'F'
Order By
  PrimeiroNome

--10
Select
  Filmes.Nome,
  Generos.Genero
From 
  FilmesGenero
Inner Join Filmes On 
  Filmes.Id = FilmesGenero.IdFilme
Inner Join Generos On
  Generos.Id = FilmesGenero.IdGenero

--11
Select
  Filmes.Nome,
  Generos.Genero
From 
  FilmesGenero
Inner Join Filmes On 
  Filmes.Id = FilmesGenero.IdFilme
Inner Join Generos On
  Generos.Id = FilmesGenero.IdGenero
Where
  Generos.Genero = 'Mistério'

--12
Select
  Filmes.Nome,
  Atores.PrimeiroNome,
  Atores.UltimoNome,
  ElencoFilme.Papel
From 
  ElencoFilme
Inner Join Filmes On 
  Filmes.Id = ElencoFilme.IdFilme
Inner Join Atores On
  Atores.Id = ElencoFilme.IdAtor
