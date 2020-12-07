DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `avg_restaurant_score`(
	IN restaurant_id INT)
BEGIN
	SELECT R.restaurant_id, AVG(rc.restaurant_score)
	FROM restaurant AS R
    INNER JOIN restaurant_score AS rc
    USING(restaurant_id);
END ;;
