SELECT * FROM CLINICA
SELECT * FROM VETERINARIO
SELECT * FROM DONO
SELECT * FROM TIPOPET
SELECT * FROM RAÇA
SELECT * FROM PET
SELECT * FROM ATENDIMENTO

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)

SELECT nomeVet, nomeClinica, CRMV FROM VETERINARIO
LEFT JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica

--listar todas as raças que começam com a letra S
SELECT nomeRaça FROM RAÇA
WHERE nomeRaça LIKE 's%';

--listar todos os tipos de pet que terminam com a letra O (coloquei com outra letra)
SELECT nomeRaça FROM RAÇA
WHERE nomeRaça LIKE '%e';

--listar todos os pets mostrando os nomes dos seus donos
SELECT nomePet, nomeDono FROM PET
LEFT JOIN DONO
ON PET.idDono = DONO.idDono

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT nomeVet, nomePet, Descricao , DataAtend FROM ATENDIMENTO
RIGHT JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
FULL OUTER JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario

