-- Estrutuura da tabela das turmas

DROP TABLE IF EXISTS `turma`;

CREATE TABLE `turma` (
    `Id_Turma` int PRIMARY KEY AUTO_INCREMENT,
    `Turma` int,
    `Periodo` VARCHAR(25),
    `Nome_Professor` VARCHAR(100),
    `Horario` VARCHAR(25),
    `Vagas_Ocupadas` int,
    `Vagas_Totais` int,
    `Local` VARCHAR(25),
    FOREIGN KEY (fk_Professor) REFERENCES professor(Id_Professor),
    FOREIGN KEY (fk_Disciplina) REFERENCES disciplina(Codigo_Disciplina),
    FOREIGN KEY (fk_Departamento) REFERENCES departamento(Codigo_Departamento),
)