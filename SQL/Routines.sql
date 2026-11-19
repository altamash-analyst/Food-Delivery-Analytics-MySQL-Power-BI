-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: food_delivery_analytics
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_food_delivery_sales`
--

DROP TABLE IF EXISTS `vw_food_delivery_sales`;
/*!50001 DROP VIEW IF EXISTS `vw_food_delivery_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_food_delivery_sales` AS SELECT 
 1 AS `order_id`,
 1 AS `order_date`,
 1 AS `order_status`,
 1 AS `payment_method`,
 1 AS `delivery_type`,
 1 AS `delivery_city`,
 1 AS `delivery_state`,
 1 AS `delivery_region`,
 1 AS `delivery_distance_km`,
 1 AS `delivery_time_minutes`,
 1 AS `delivery_fee`,
 1 AS `order_discount_amount`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `customer_city`,
 1 AS `customer_state`,
 1 AS `customer_region`,
 1 AS `customer_segment`,
 1 AS `registration_date`,
 1 AS `restaurant_id`,
 1 AS `restaurant_name`,
 1 AS `cuisine_type`,
 1 AS `restaurant_city`,
 1 AS `restaurant_state`,
 1 AS `restaurant_region`,
 1 AS `restaurant_rating`,
 1 AS `delivery_rating`,
 1 AS `average_cost_for_two`,
 1 AS `order_item_id`,
 1 AS `food_id`,
 1 AS `quantity`,
 1 AS `unit_price`,
 1 AS `discount`,
 1 AS `food_name`,
 1 AS `category`,
 1 AS `subcategory`,
 1 AS `unit_cost`,
 1 AS `selling_price`,
 1 AS `gross_sales`,
 1 AS `item_discount_amount`,
 1 AS `net_sales`,
 1 AS `food_cost`,
 1 AS `profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_food_delivery_sales`
--

/*!50001 DROP VIEW IF EXISTS `vw_food_delivery_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_food_delivery_sales` AS select `o`.`order_id` AS `order_id`,`o`.`order_date` AS `order_date`,`o`.`order_status` AS `order_status`,`o`.`payment_method` AS `payment_method`,`o`.`delivery_type` AS `delivery_type`,`o`.`delivery_city` AS `delivery_city`,`o`.`delivery_state` AS `delivery_state`,`o`.`delivery_region` AS `delivery_region`,`o`.`delivery_distance_km` AS `delivery_distance_km`,`o`.`delivery_time_minutes` AS `delivery_time_minutes`,`o`.`delivery_fee` AS `delivery_fee`,`o`.`discount_amount` AS `order_discount_amount`,`c`.`customer_id` AS `customer_id`,`c`.`customer_name` AS `customer_name`,`c`.`gender` AS `gender`,`c`.`age` AS `age`,`c`.`city` AS `customer_city`,`c`.`state` AS `customer_state`,`c`.`region` AS `customer_region`,`c`.`customer_segment` AS `customer_segment`,`c`.`registration_date` AS `registration_date`,`r`.`restaurant_id` AS `restaurant_id`,`r`.`restaurant_name` AS `restaurant_name`,`r`.`cuisine_type` AS `cuisine_type`,`r`.`city` AS `restaurant_city`,`r`.`state` AS `restaurant_state`,`r`.`region` AS `restaurant_region`,`r`.`restaurant_rating` AS `restaurant_rating`,`r`.`delivery_rating` AS `delivery_rating`,`r`.`average_cost_for_two` AS `average_cost_for_two`,`oi`.`order_item_id` AS `order_item_id`,`oi`.`food_id` AS `food_id`,`oi`.`quantity` AS `quantity`,`oi`.`unit_price` AS `unit_price`,`oi`.`discount` AS `discount`,`f`.`food_name` AS `food_name`,`f`.`category` AS `category`,`f`.`subcategory` AS `subcategory`,`f`.`unit_cost` AS `unit_cost`,`f`.`selling_price` AS `selling_price`,round((`oi`.`quantity` * `oi`.`unit_price`),2) AS `gross_sales`,round((((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100),2) AS `item_discount_amount`,round(((`oi`.`quantity` * `oi`.`unit_price`) - (((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100)),2) AS `net_sales`,round((`oi`.`quantity` * `f`.`unit_cost`),2) AS `food_cost`,round((((`oi`.`quantity` * `oi`.`unit_price`) - (((`oi`.`quantity` * `oi`.`unit_price`) * `oi`.`discount`) / 100)) - (`oi`.`quantity` * `f`.`unit_cost`)),2) AS `profit` from ((((`orders` `o` join `customers` `c` on((`o`.`customer_id` = `c`.`customer_id`))) join `restaurants` `r` on((`o`.`restaurant_id` = `r`.`restaurant_id`))) join `order_items` `oi` on((`o`.`order_id` = `oi`.`order_id`))) join `foods` `f` on((`oi`.`food_id` = `f`.`food_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-22 16:43:50
