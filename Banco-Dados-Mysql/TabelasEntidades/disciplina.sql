-- Estrutuura da tabela das disciplinas

DROP TABLE IF EXISTS `disciplina`;

CREATE TABLE `disciplina` (
    `Codigo_Disciplina` VARCHAR(10) PRIMARY KEY,
    `Nome_Disciplina` VARCHAR(100),
    FOREIGN KEY (fk_Professor) REFERENCES professor(Id_Professor),
    FOREIGN KEY (fk_Turma) REFERENCES turma(Id_Turma),
    FOREIGN KEY (fk_Departamento) REFERENCES departamento(Codigo_Departamento),
)