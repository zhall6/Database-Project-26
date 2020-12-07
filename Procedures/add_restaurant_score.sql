DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_restaurant_score`(
	IN rating_id INT,
    IN person_id INT,
    IN order_id INT,
    IN restaurant_id INT,
    IN restaurant_score INT,
    IN rate_comment TEXT)
BEGIN
	SET @new_rating_id = ((SELECT MAX(dr_id) FROM restaurant_score) + 1),
    @new_person_id = person_id,
    @new_order_id = order_id,
    @new_restaurant_id = restaurant_id,
    @new_restaurant_score = restaurant_score,
    @new_rate_comment = rate_comment;
    SET SQL_SAFE_UPDATES = 0;
    INSERT INTO restaurant_score(rating_id, person_id, order_id, restaurant_id, restaurant_score, rate_comment)
    VALUES (@new_rating_id, @new_person_id, @new_order_id, @new_restaurant_id, @new_restaurant_score, @new_rate_comment);
END ;;
