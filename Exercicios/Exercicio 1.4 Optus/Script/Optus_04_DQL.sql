SELECT * FROM EMPRESA
SELECT * FROM USUARIO
SELECT * FROM CD
SELECT * FROM ALBUM
SELECT * FROM ESTILOMUSICAL
SELECT * FROM ARTISTAS

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUsuario, Email, Cpf, TipoDePermissão FROM USUARIO
WHERE TipoDePermissão = 'Adm'

--listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * FROM ALBUM
WHERE daralançamento BETWEEN '2021-08-04'AND '2021-08-05';

SELECT * FROM ALBUM
WHERE daralançamento BETWEEN '2021-08-06'AND '2021-08-10';

--listar os dados de um usuário através do e-mail e senha

SELECT * FROM USUARIO
WHERE Email = 'maria@email.com' AND Senha = 123

SELECT * FROM USUARIO
WHERE Email = 'leonardo@email.com' AND Senha = 456

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT nomeAlbum, nomeArtistas , nomeEstMusical FROM ALBUM
LEFT JOIN ARTISTAS
ON ALBUM.idArtistas = ARTISTAS.idArtistas
LEFT JOIN ESTILOMUSICAL
ON ALBUM.idEstMusical = ESTILOMUSICAL.idEstMusical