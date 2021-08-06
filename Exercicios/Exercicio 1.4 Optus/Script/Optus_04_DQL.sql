SELECT * FROM EMPRESA
SELECT * FROM USUARIO
SELECT * FROM CD
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ARTISTAS

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT nomeUsuario, Email, Cpf, TipoDePermiss�o FROM USUARIO
WHERE TipoDePermiss�o = 'Adm'

--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * FROM ALBUM
WHERE daralan�amento BETWEEN '2021-08-04'AND '2021-08-05';

SELECT * FROM ALBUM
WHERE daralan�amento BETWEEN '2021-08-06'AND '2021-08-10';

--listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT * FROM USUARIO
WHERE Email = 'maria@email.com' AND Senha = 123

SELECT * FROM USUARIO
WHERE Email = 'leonardo@email.com' AND Senha = 456

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT nomeAlbum, nomeArtistas , nomeEstMusical FROM ALBUM
LEFT JOIN ARTISTAS
ON ALBUM.idArtistas = ARTISTAS.idArtistas
LEFT JOIN ESTILOMUSICAL
ON ALBUM.idEstMusical = ESTILOMUSICAL.idEstMusical