-- Estrutuura da tabela das avaliacoes das turmas

DROP TABLE IF EXISTS `avaliacao`;

CREATE TABLE `avaliacao` (
    `Id_Avaliacao` int PRIMARY KEY AUTO_INCREMENT,
    `Data` DATE,
    `Conteudo` VARCHAR(500),
    FOREIGN KEY (fk_Estudante) REFERENCES estudante(Matricula),
    FOREIGN KEY (fk_Turma) REFERENCES turma(Id_Turma),
)