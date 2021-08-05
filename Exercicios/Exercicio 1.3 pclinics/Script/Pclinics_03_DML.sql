INSERT INTO CLINICA (nomeClinica, End_Clinica)
VALUES ('Pclinics', 'Rua Brasil')
GO

INSERT INTO VETERINARIO (nomeVet)
VALUES ('Jorge'),('Giovana'),('Luisa');
GO

INSERT INTO DONO(nomeDONO)
VALUES ('Roberto'),('Samuel'),('Rodrigo');
GO

INSERT INTO TIPOPET(nomeTPet)
VALUES ('Gato'),('Cachorro');
GO

INSERT INTO RA�A(idTipoPet, nomeRa�a)
VALUES (1,'Siames'),(2,'Yorkshire'),(2,'Pudle'),(1,'Persa');
GO

INSERT INTO PET(idDono, nomePet, idRa�a)
VALUES (1,'Bob', 2),(2,'Rock', 2),(2,'Lilly', 4),(3,'Pituco', 1);
GO

INSERT INTO ATENDIMENTO(idVeterinario, idPet)
VALUES (3,1),(3,3),(1,4),(2,2);
GO