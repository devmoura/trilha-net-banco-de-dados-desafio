
-- 1-
SELECT Nome, Ano FROM Filmes;


-- 2-
SELECT Nome, Ano, Duracao FROM Filmes 
ORDER BY Ano;


-- 3-
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o futuro';


-- 4-
SELECT Nome, Ano, Duracao FROM Filmes WHERE ANO = 1997;


-- 5-
SELECT Nome, Ano, Duracao FROM Filmes WHERE ANO > 2000;


-- 6-
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;
-- 7- 
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;





-- 8-
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
ORDER BY PrimeiroNome;
-- 9-
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT Nome, Genero FROM Filmes -- Banco de dados.

-- 11-
SELECT Nome FROM Filmes WHERE FilmesGenero = 'Mistério';


-- 12-
SELECT 
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM 
    Atores
INNER JOIN 
    ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN
    Filmes ON ElencoFilme.IdFilme = Filmes.Id;
