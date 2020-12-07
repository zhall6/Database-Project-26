DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `avg_driver_score`(
	IN driver_id INT)
BEGIN
	SELECT D.driver_id, AVG(dc.driver_score)
	FROM driver AS D
    INNER JOIN driver_score AS dc
    USING(driver_id);
END ;;
