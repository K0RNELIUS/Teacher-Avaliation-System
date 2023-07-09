-- Estrutuura da tabela dos professores

DROP TABLE IF EXISTS `professor`;

CREATE TABLE `professor` (
    `Id_Professor` int PRIMARY KEY AUTO_INCREMENT,
    `Nome` VARCHAR(100),
    FOREIGN KEY (fk_Turma) REFERENCES turma(Id_Turma),
    FOREIGN KEY (fk_Disciplina) REFERENCES disciplina(Codigo_Disciplina),
    FOREIGN KEY (fk_Departamento) REFERENCES departamento(Codigo_Departamento),
)