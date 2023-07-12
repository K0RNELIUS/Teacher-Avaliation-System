CREATE VIEW denuncia_view AS 
SELECT denuncia.Data, avaliacao.Conteudo
FROM denuncia, avaliacao
WHERE denuncia.fk_Avaliacao = avaliacao.Id_Avaliacao
ORDER BY denuncia.Data;

CREATE VIEW avaliacao_view AS
SELECT avaliacao.Data, avaliacao.Conteudo, professor.Nome, disciplina.Nome_Disciplina
FROM avaliacao
JOIN turma ON avaliacao.fk_Turma = turma.Id_Turma 
JOIN professor ON turma.fk_Professor = professor.Id_Professor 
JOIN disciplina ON turma.fk_Disciplina = disciplina.Codigo_Disciplina
ORDER BY avaliacao.Data DESC;

