-- Arquivo SQL utilizado para popular o BD

-- estudantes

-- Usuario Admin

INSERT INTO estudante (Matricula, Email,
Senha, Nome, Curso, Admin)
VALUES (211020900, 'leobelko@aluno.unb.br',
'teste', 'Leandro Kornelius', 'Computacao', 1);

-- Usuarios Estudantes

INSERT INTO estudante (Matricula, Email,
Senha, Nome, Curso, Admin)
VALUES (211020901, 'user1@aluno.unb.br', 'teste', 'user1', 'Engenheria de Computacao', DEFAULT),
(211020902, 'user2aluno.unb.br', 'teste', 'user2', 'Ciencia da Computacao', DEFAULT),
(211020903, 'user3@aluno.unb.br', 'teste', 'user3', 'Computacao', DEFAULT),
(211020904, 'user4@aluno.unb.br', 'teste', 'user4', 'Curso Teste', DEFAULT); -- usuario para testar denuncia atendida que remove estudante

-- departamentos, cujos dados foram copiados do arquivo csv departamentos

INSERT INTO departamento (Codigo_Departamento, Nome_Departamento)
VALUES (548, 'DEPTO ECONOMIA - BRASILIA'), 
(508, 'DEPTO CIENCIAS DA COMPUTACAO - BRASILIA'),
(481, 'DEPTO ANTROPOLOGIA - BRASILIA');

-- disciplinas, cujos dados foram copiados do arquivo csv disciplinas 

INSERT INTO disciplina (Codigo_Disciplina, Nome_Disciplina, fk_Departamento)
VALUES ('CIC0004', 'ALGORITMOS E PROGRAMACAO DE COMPUTADORES', 508), 
('CIC0002', 'FUNDAMENTOS TEORICOS DA COMPUTACAO', 508), 
('ECO0128', 'INTRODUCAO A ECONOMETRIA', 548), 
('DAN0014', 'ANTROPOLOGIA VISUAL', 481);

-- professores 

INSERT INTO professor (Nome, fk_Departamento) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES ('Maristela Holanda', 508), 
('Pedro Berger', 508), 
('Penaloza', 548), 
('Professor Antropologia', 481);

/* turmas
houve uma pequena alteracao quanto ao recebido no csv, 
pois seria redundante ter o nome do professor novamente quando seria possivel ser acessado pela chave estrageira do prof
Por isso, a coluna que teria o nome do professor mais a carga horario foi reduzida a somente a carga horario*/

INSERT INTO turma (Turma, Periodo, Carga_Horaria, Horario, Vagas_Ocupadas, Vagas_Totais, Local, fk_Professor, fk_Disciplina)
VALUES (10, '2022.1', 90, '345N12', 0, 48, 'PJC BT 036', 1, 'CIC0004'), 
(1, '2022.1', 60, '35N34', 0, 20, 'ICC AT 164', 2, 'CIC0002'), 
(2, '2022.1', 60, '35M12', 0, 35, 'PJC BT 040', 3, 'ECO0128'), 
(3, '2022.1', 60, '24T34', 0, 40, 'PJC BT 044', 4, 'DAN0014');

-- avaliacoes 

INSERT INTO avaliacao (Data, Conteudo, fk_Estudante, fk_Turma) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 'Excelente professora!', 211020901, 1), 
(NOW(), 'Tive que trancar, mas ate o momento tava de boas.', 211020902, 1),
(NOW(), 'Professor coerente.', 211020901, 2), 
(NOW(), 'Achei a materia bem difícil, mas o professor e gente boa', 211020902, 3), 
(NOW(), 'Top!', 211020902, 4), -- inserido para testar denuncia ignorada
(NOW(), 'tuti tuti!', 211020903, 4), -- inserido para testar denuncia atendida
(NOW(), 'Uma merda!', 211020904, 4); -- inserido para testar denuncia atendida e usuario deletado

-- denuncias 

INSERT INTO denuncia (Data, fk_Avaliacao) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 1), 
(NOW(), 2), 
(NOW(), 3), 
(NOW(), 5), 
(NOW(), 6), 
(NOW(), 7);









