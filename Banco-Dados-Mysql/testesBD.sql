-- =================================================
-- TESTES DE VISUALIZACAO DAS TABELAS
-- =================================================

-- Verificando linhas inseridas em estudantes
-- SELECT * FROM estudante;

-- Verificando linhas inseridas em departamentos
-- SELECT * FROM departamento;

-- Verificando linhas inseridas em disciplinas
-- SELECT * FROM disciplina;

-- Verificando linhas inseridas em professores
-- SELECT * FROM professor;

-- Verificando linhas inseridas em turmas
-- SELECT * FROM turma;

-- Verificando linhas inseridas em avaliacoes
-- SELECT * FROM avaliacao;

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