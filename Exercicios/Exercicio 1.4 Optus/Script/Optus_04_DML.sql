INSERT INTO USUARIO(nomeUsuario,Cpf, Email,Senha, TipoDePermissão)
VALUES ('MamazZ', '5A5', 'maria@email.com', '123', 'Comum'), ('Leleo', '6K7', 'leonardo@email.com', '456', 'Adm');
GO

INSERT INTO ARTISTAS(nomeArtistas)
VALUES ('Fefeu'),('Fufu');
GO

INSERT INTO ESTILOMUSICAL(nomeEstMusical)
VALUES ('Setanejo'),('Modão'),('Rock');
GO

INSERT INTO EMPRESA(nomeEmpresa, idUsuario)
VALUES ('Optus',2);
GO

INSERT INTO CD (nomeCD, idArtistas, idEstMusical)
VALUES ('Nunca Pare',1, 1),('Loucos',2, 3),('Embora...',1, 2);
GO

INSERT INTO ALBUM( nomeAlbum, idArtistas, idEstMusical)
VALUES ('Solidão',1, 2),('Loucos',2, 3);
GO