DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_driver_score`(
	IN rating_id INT,
    IN person_id INT,
    IN order_id INT,
    IN driver_id INT,
    IN driver_score INT,
    IN rate_comment TEXT)
BEGIN
	SET @new_rating_id = ((SELECT MAX(dr_id) FROM driver_score) + 1),
    @new_person_id = person_id,
    @new_order_id = order_id,
    @new_driver_id = driver_id,
    @new_driver_score = driver_score,
    @new_rate_comment = rate_comment;
    SET SQL_SAFE_UPDATES = 0;
    INSERT INTO driver_score(rating_id, person_id, order_id, driver_id, driver_score, rate_comment)
    VALUES (@new_rating_id, @new_person_id, @new_order_id, @new_driver_id, @new_driver_score, @new_rate_comment);
END ;;
