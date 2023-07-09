-- Estrutuura da tabela das denuncias

DROP TABLE IF EXISTS `denuncia`;

CREATE TABLE `denuncia` (
    `Id_Denuncia` int PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (fk_Avaliacao) REFERENCES avaliacao(Id_Avaliacao),
)