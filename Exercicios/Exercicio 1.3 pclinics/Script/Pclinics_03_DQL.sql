SELECT * FROM CLINICA
SELECT * FROM VETERINARIO
SELECT * FROM DONO
SELECT * FROM TIPOPET
SELECT * FROM RA�A
SELECT * FROM PET
SELECT * FROM ATENDIMENTO

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)

SELECT nomeVet, nomeClinica, CRMV FROM VETERINARIO
LEFT JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica

--listar todas as ra�as que come�am com a letra S
SELECT nomeRa�a FROM RA�A
WHERE nomeRa�a LIKE 's%';

--listar todos os tipos de pet que terminam com a letra O (coloquei com outra letra)
SELECT nomeRa�a FROM RA�A
WHERE nomeRa�a LIKE '%e';

--listar todos os pets mostrando os nomes dos seus donos
SELECT nomePet, nomeDono FROM PET
LEFT JOIN DONO
ON PET.idDono = DONO.idDono

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido
SELECT nomeVet, nomePet, Descricao , DataAtend FROM ATENDIMENTO
RIGHT JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
FULL OUTER JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario

