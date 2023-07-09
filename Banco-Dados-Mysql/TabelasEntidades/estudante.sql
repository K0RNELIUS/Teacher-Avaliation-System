-- Estrutuura da tabela dos usuarios/estudantes

DROP TABLE IF EXISTS `estudante`;

CREATE TABLE `estudante` (
    `Matricula` int PRIMARY KEY,
    `Email` VARCHAR(50),
    `Senha` VARCHAR(25),
    `Nome` VARCHAR(100),
    `Curso` VARCHAR(50),
    `Admin` BOOLEAN DEFAULT 0,
)