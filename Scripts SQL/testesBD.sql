-- =================================================
-- TESTES DE VISUALIZACAO DAS TABELAS
-- =================================================

-- Verificando linhas inseridas em estudantes
-- SELECT * FROM estudante;
-- DELETE FROM estudante WHERE Matricula = 1;
-- SELECT Matricula FROM estudante WHERE 211020999 = Matricula;

-- Verificando linhas inseridas em departamentos
-- INSERT INTO departamento (Nome_Departamento) VALUES ('teste');
-- INSERT INTO departamento (Codigo_Departamento,Nome_Departamento)  VALUES ('teste', 'teste');
-- DELETE FROM departamento WHERE Codigo_Departamento = 'teste';
-- SELECT * FROM departamento;

-- Verificando linhas inseridas em disciplinas
-- SELECT * FROM disciplina;

-- Verificando linhas inseridas em professores
-- SELECT * FROM professor;

-- Verificando linhas inseridas em turmas
-- SELECT * FROM turma;

-- Verificando linhas inseridas em avaliacoes
-- estudanteestudanteSELECT * FROM avaliacao;

-- Verificando linhas inseridas em denuncias
-- SELECT * FROM denuncia;

-- =================================================
-- TESTES DAS VIEWS CRIADAS 
-- =================================================
/* 
Com intuito de permitir que o admin tome uma decisao,
ele deve ser capaz de visualizar o conteudo da avaliacao para julgar a acao necessaria
Dessa forma, a denuncia_view tem como intuito mostrar o conteudo das avaliacoes denunciadas omitindo informacoes do autor da avaliacao.
*/

-- Para confirmar ordenacao, pois todas denuncias terao o mesmo stamp
/*UPDATE denuncia
SET Data = NOW()
WHERE Id_Denuncia = 3;*/

-- SELECT * FROM denuncia_view;

-- Para confirmar ordenacao inversa realizei a operacao abaixo
/*UPDATE avaliacao
SET Data = NOW()
WHERE Id_Avaliacao = 1;*/

-- SELECT * FROM avaliacao_view;

-- =================================================
-- TESTES DAS PROCEDURES CRIADAS e CRUD de Estudante, Avaliacao e Denuncia
-- =================================================
-- CRU Estudante
-- SELECT * FROM estudante;
/*
INSERT INTO estudante (Matricula, Email,
Senha, Nome, Curso)
VALUES (211020905, 'user5@aluno.unb.br', 'teste', 'user5', 'Engenheria de Computacao');
*/
/*
UPDATE estudante
SET Curso = 'curso atualizado'
WHERE Matricula = 211020905;
*/

-- SELECT * FROM estudante;

-- CRU Avaliacao

-- SELECT * FROM avaliacao;

/*
INSERT INTO avaliacao (Data, Conteudo, fk_Estudante, fk_Turma) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 'Comentario irrelevante!', 211020905, 1);
*/
/*
INSERT INTO avaliacao (Data, Conteudo, fk_Estudante, fk_Turma) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 'Comentario irrelevante 2!', 211020905, 1);
*/

-- SELECT * FROM avaliacao; 
/*
UPDATE avaliacao
SET Conteudo = 'acho que eu gostei'
WHERE Id_Avaliacao = 6;
*/
-- SELECT * FROM avaliacao;

-- CRU Denuncia

-- SELECT * FROM denuncia;
/*
INSERT INTO denuncia (Data, fk_Avaliacao) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 8);
*/

/*
INSERT INTO denuncia (Data, fk_Avaliacao) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 8);
*/
/*
INSERT INTO denuncia (Data, fk_Avaliacao) -- em func do auto_increment o id sera omitido e adicionado automaticamente
VALUES (NOW(), 9);
*/
/*
UPDATE denuncia
SET Data = NOW()
WHERE Id_Denuncia = 3;
*/

-- SELECT * FROM denuncia;

-- Deletes

-- Denuncia
-- DELETE FROM denuncia WHERE Id_Denuncia = 1;
-- SELECT * FROM denuncia;

-- Avaliacao
-- SELECT * FROM avaliacao
-- SELECT * FROM denuncia;
-- SET SQL_SAFE_UPDATES = 0;
-- CALL delete_avaliacao(7);
-- SELECT * FROM denuncia;
-- SELECT * FROM avaliacao