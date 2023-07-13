DELIMITER //
CREATE PROCEDURE delete_avaliacao(IN id_avaliacao INT)
BEGIN
    START TRANSACTION;

    DELETE FROM denuncia WHERE id_avaliacao = fk_Avaliacao;

    DELETE FROM avaliacao WHERE id_avaliacao = Id_Avaliacao;

    COMMIT;
END //
DELIMITER ;






