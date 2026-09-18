CREATE DATABASE  IF NOT EXISTS `flight_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flight_project`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: flight_project
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
-- Temporary view structure for view `airline_performance`
--

DROP TABLE IF EXISTS `airline_performance`;
/*!50001 DROP VIEW IF EXISTS `airline_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `airline_performance` AS SELECT 
 1 AS `AIRLINE`,
 1 AS `AIRLINE_NAME`,
 1 AS `total_flights`,
 1 AS `cancelled_flights`,
 1 AS `diverted_flights`,
 1 AS `delayed_flights`,
 1 AS `avg_departure_delay`,
 1 AS `avg_arrival_delay`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `IATA_CODE` varchar(10) NOT NULL,
  `AIRLINE` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`IATA_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `airport_performance`
--

DROP TABLE IF EXISTS `airport_performance`;
/*!50001 DROP VIEW IF EXISTS `airport_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `airport_performance` AS SELECT 
 1 AS `ORIGIN_AIRPORT`,
 1 AS `AIRPORT`,
 1 AS `CITY`,
 1 AS `STATE`,
 1 AS `total_departures`,
 1 AS `cancelled_flights`,
 1 AS `avg_departure_delay`,
 1 AS `delayed_departures`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `IATA_CODE` varchar(10) NOT NULL,
  `AIRPORT` varchar(200) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `COUNTRY` varchar(100) DEFAULT NULL,
  `LATITUDE` decimal(10,6) DEFAULT NULL,
  `LONGITUDE` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`IATA_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `delay_reason_analysis`
--

DROP TABLE IF EXISTS `delay_reason_analysis`;
/*!50001 DROP VIEW IF EXISTS `delay_reason_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `delay_reason_analysis` AS SELECT 
 1 AS `AIRLINE`,
 1 AS `air_system_delay`,
 1 AS `security_delay`,
 1 AS `airline_delay`,
 1 AS `late_aircraft_delay`,
 1 AS `weather_delay`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_id` bigint NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `DAY` int DEFAULT NULL,
  `DAY_OF_WEEK` int DEFAULT NULL,
  `AIRLINE` varchar(10) DEFAULT NULL,
  `FLIGHT_NUMBER` int DEFAULT NULL,
  `TAIL_NUMBER` varchar(20) DEFAULT NULL,
  `ORIGIN_AIRPORT` varchar(10) DEFAULT NULL,
  `DESTINATION_AIRPORT` varchar(10) DEFAULT NULL,
  `SCHEDULED_DEPARTURE` int DEFAULT NULL,
  `DEPARTURE_TIME` int DEFAULT NULL,
  `DEPARTURE_DELAY` decimal(10,2) DEFAULT NULL,
  `TAXI_OUT` decimal(10,2) DEFAULT NULL,
  `WHEELS_OFF` int DEFAULT NULL,
  `SCHEDULED_TIME` decimal(10,2) DEFAULT NULL,
  `ELAPSED_TIME` decimal(10,2) DEFAULT NULL,
  `AIR_TIME` decimal(10,2) DEFAULT NULL,
  `DISTANCE` decimal(10,2) DEFAULT NULL,
  `WHEELS_ON` int DEFAULT NULL,
  `TAXI_IN` decimal(10,2) DEFAULT NULL,
  `SCHEDULED_ARRIVAL` int DEFAULT NULL,
  `ARRIVAL_TIME` int DEFAULT NULL,
  `ARRIVAL_DELAY` decimal(10,2) DEFAULT NULL,
  `DIVERTED` int DEFAULT NULL,
  `CANCELLED` int DEFAULT NULL,
  `CANCELLATION_REASON` varchar(10) DEFAULT NULL,
  `AIR_SYSTEM_DELAY` decimal(10,2) DEFAULT NULL,
  `SECURITY_DELAY` decimal(10,2) DEFAULT NULL,
  `AIRLINE_DELAY` decimal(10,2) DEFAULT NULL,
  `LATE_AIRCRAFT_DELAY` decimal(10,2) DEFAULT NULL,
  `WEATHER_DELAY` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5819080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `monthly_performance`
--

DROP TABLE IF EXISTS `monthly_performance`;
/*!50001 DROP VIEW IF EXISTS `monthly_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthly_performance` AS SELECT 
 1 AS `YEAR`,
 1 AS `MONTH`,
 1 AS `total_flights`,
 1 AS `cancelled_flights`,
 1 AS `diverted_flights`,
 1 AS `avg_departure_delay`,
 1 AS `avg_arrival_delay`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_aircraft_performance`
--

DROP TABLE IF EXISTS `vw_aircraft_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_aircraft_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_aircraft_performance` AS SELECT 
 1 AS `TAIL_NUMBER`,
 1 AS `TOTAL_FLIGHTS`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DIVERTED_FLIGHTS`,
 1 AS `DELAYED_FLIGHTS`,
 1 AS `AVG_ARRIVAL_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_airline_performance`
--

DROP TABLE IF EXISTS `vw_airline_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_airline_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_airline_performance` AS SELECT 
 1 AS `AIRLINE`,
 1 AS `AIRLINE_NAME`,
 1 AS `TOTAL_FLIGHTS`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DIVERTED_FLIGHTS`,
 1 AS `DELAYED_FLIGHTS`,
 1 AS `AVG_DEPARTURE_DELAY`,
 1 AS `AVG_ARRIVAL_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_airport_performance`
--

DROP TABLE IF EXISTS `vw_airport_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_airport_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_airport_performance` AS SELECT 
 1 AS `ORIGIN_AIRPORT`,
 1 AS `AIRPORT`,
 1 AS `CITY`,
 1 AS `STATE`,
 1 AS `TOTAL_DEPARTURES`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DELAYED_DEPARTURES`,
 1 AS `AVG_DEPARTURE_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cancellation_analysis`
--

DROP TABLE IF EXISTS `vw_cancellation_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_cancellation_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cancellation_analysis` AS SELECT 
 1 AS `AIRLINE`,
 1 AS `CANCELLATION_REASON`,
 1 AS `CANCELLED_FLIGHTS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_daily_performance`
--

DROP TABLE IF EXISTS `vw_daily_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_daily_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_daily_performance` AS SELECT 
 1 AS `YEAR`,
 1 AS `MONTH`,
 1 AS `DAY`,
 1 AS `TOTAL_FLIGHTS`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DIVERTED_FLIGHTS`,
 1 AS `DELAYED_FLIGHTS`,
 1 AS `AVG_DEPARTURE_DELAY`,
 1 AS `AVG_ARRIVAL_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_departure_delay_analysis`
--

DROP TABLE IF EXISTS `vw_departure_delay_analysis`;
/*!50001 DROP VIEW IF EXISTS `vw_departure_delay_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_departure_delay_analysis` AS SELECT 
 1 AS `AIRLINE`,
 1 AS `ON_TIME_FLIGHTS`,
 1 AS `DELAY_1_15_MIN`,
 1 AS `DELAY_16_60_MIN`,
 1 AS `DELAY_OVER_60_MIN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_flights_clean`
--

DROP TABLE IF EXISTS `vw_flights_clean`;
/*!50001 DROP VIEW IF EXISTS `vw_flights_clean`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_flights_clean` AS SELECT 
 1 AS `flight_id`,
 1 AS `YEAR`,
 1 AS `MONTH`,
 1 AS `DAY`,
 1 AS `DAY_OF_WEEK`,
 1 AS `AIRLINE`,
 1 AS `FLIGHT_NUMBER`,
 1 AS `TAIL_NUMBER`,
 1 AS `ORIGIN_AIRPORT`,
 1 AS `DESTINATION_AIRPORT`,
 1 AS `SCHEDULED_DEPARTURE`,
 1 AS `DEPARTURE_TIME`,
 1 AS `DEPARTURE_DELAY`,
 1 AS `TAXI_OUT`,
 1 AS `WHEELS_OFF`,
 1 AS `SCHEDULED_TIME`,
 1 AS `ELAPSED_TIME`,
 1 AS `AIR_TIME`,
 1 AS `DISTANCE`,
 1 AS `WHEELS_ON`,
 1 AS `TAXI_IN`,
 1 AS `SCHEDULED_ARRIVAL`,
 1 AS `ARRIVAL_TIME`,
 1 AS `ARRIVAL_DELAY`,
 1 AS `DIVERTED`,
 1 AS `CANCELLED`,
 1 AS `CANCELLATION_REASON`,
 1 AS `AIR_SYSTEM_DELAY`,
 1 AS `SECURITY_DELAY`,
 1 AS `AIRLINE_DELAY`,
 1 AS `LATE_AIRCRAFT_DELAY`,
 1 AS `WEATHER_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_monthly_performance`
--

DROP TABLE IF EXISTS `vw_monthly_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_monthly_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_monthly_performance` AS SELECT 
 1 AS `MONTH`,
 1 AS `MONTH_NAME`,
 1 AS `TOTAL_FLIGHTS`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DIVERTED_FLIGHTS`,
 1 AS `DELAYED_FLIGHTS`,
 1 AS `AVG_DEPARTURE_DELAY`,
 1 AS `AVG_ARRIVAL_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_route_performance`
--

DROP TABLE IF EXISTS `vw_route_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_route_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_route_performance` AS SELECT 
 1 AS `ORIGIN_AIRPORT`,
 1 AS `DESTINATION_AIRPORT`,
 1 AS `TOTAL_FLIGHTS`,
 1 AS `CANCELLED_FLIGHTS`,
 1 AS `DELAYED_FLIGHTS`,
 1 AS `AVG_ARRIVAL_DELAY`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `airline_performance`
--

/*!50001 DROP VIEW IF EXISTS `airline_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `airline_performance` AS select `f`.`AIRLINE` AS `AIRLINE`,`a`.`AIRLINE` AS `AIRLINE_NAME`,count(0) AS `total_flights`,sum(`f`.`CANCELLED`) AS `cancelled_flights`,sum(`f`.`DIVERTED`) AS `diverted_flights`,sum((case when (`f`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `delayed_flights`,round(avg(`f`.`DEPARTURE_DELAY`),2) AS `avg_departure_delay`,round(avg(`f`.`ARRIVAL_DELAY`),2) AS `avg_arrival_delay` from (`flights` `f` left join `airlines` `a` on((`f`.`AIRLINE` = `a`.`IATA_CODE`))) group by `f`.`AIRLINE`,`a`.`AIRLINE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `airport_performance`
--

/*!50001 DROP VIEW IF EXISTS `airport_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `airport_performance` AS select `f`.`ORIGIN_AIRPORT` AS `ORIGIN_AIRPORT`,`ap`.`AIRPORT` AS `AIRPORT`,`ap`.`CITY` AS `CITY`,`ap`.`STATE` AS `STATE`,count(0) AS `total_departures`,sum(`f`.`CANCELLED`) AS `cancelled_flights`,round(avg(`f`.`DEPARTURE_DELAY`),2) AS `avg_departure_delay`,sum((case when (`f`.`DEPARTURE_DELAY` > 15) then 1 else 0 end)) AS `delayed_departures` from (`flights` `f` left join `airports` `ap` on((`f`.`ORIGIN_AIRPORT` = `ap`.`IATA_CODE`))) group by `f`.`ORIGIN_AIRPORT`,`ap`.`AIRPORT`,`ap`.`CITY`,`ap`.`STATE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `delay_reason_analysis`
--

/*!50001 DROP VIEW IF EXISTS `delay_reason_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `delay_reason_analysis` AS select `flights`.`AIRLINE` AS `AIRLINE`,sum(`flights`.`AIR_SYSTEM_DELAY`) AS `air_system_delay`,sum(`flights`.`SECURITY_DELAY`) AS `security_delay`,sum(`flights`.`AIRLINE_DELAY`) AS `airline_delay`,sum(`flights`.`LATE_AIRCRAFT_DELAY`) AS `late_aircraft_delay`,sum(`flights`.`WEATHER_DELAY`) AS `weather_delay` from `flights` group by `flights`.`AIRLINE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthly_performance`
--

/*!50001 DROP VIEW IF EXISTS `monthly_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_performance` AS select `flights`.`YEAR` AS `YEAR`,`flights`.`MONTH` AS `MONTH`,count(0) AS `total_flights`,sum(`flights`.`CANCELLED`) AS `cancelled_flights`,sum(`flights`.`DIVERTED`) AS `diverted_flights`,round(avg(`flights`.`DEPARTURE_DELAY`),2) AS `avg_departure_delay`,round(avg(`flights`.`ARRIVAL_DELAY`),2) AS `avg_arrival_delay` from `flights` group by `flights`.`YEAR`,`flights`.`MONTH` order by `flights`.`YEAR`,`flights`.`MONTH` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_aircraft_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_aircraft_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_aircraft_performance` AS select `flights`.`TAIL_NUMBER` AS `TAIL_NUMBER`,count(0) AS `TOTAL_FLIGHTS`,sum(`flights`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum(`flights`.`DIVERTED`) AS `DIVERTED_FLIGHTS`,sum((case when (`flights`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_FLIGHTS`,round(avg(`flights`.`ARRIVAL_DELAY`),2) AS `AVG_ARRIVAL_DELAY` from `flights` where (`flights`.`TAIL_NUMBER` is not null) group by `flights`.`TAIL_NUMBER` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_airline_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_airline_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_airline_performance` AS select `f`.`AIRLINE` AS `AIRLINE`,`a`.`AIRLINE` AS `AIRLINE_NAME`,count(0) AS `TOTAL_FLIGHTS`,sum(`f`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum(`f`.`DIVERTED`) AS `DIVERTED_FLIGHTS`,sum((case when (`f`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_FLIGHTS`,round(avg(`f`.`DEPARTURE_DELAY`),2) AS `AVG_DEPARTURE_DELAY`,round(avg(`f`.`ARRIVAL_DELAY`),2) AS `AVG_ARRIVAL_DELAY` from (`flights` `f` left join `airlines` `a` on((`f`.`AIRLINE` = `a`.`IATA_CODE`))) group by `f`.`AIRLINE`,`a`.`AIRLINE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_airport_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_airport_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_airport_performance` AS select `f`.`ORIGIN_AIRPORT` AS `ORIGIN_AIRPORT`,`a`.`AIRPORT` AS `AIRPORT`,`a`.`CITY` AS `CITY`,`a`.`STATE` AS `STATE`,count(0) AS `TOTAL_DEPARTURES`,sum(`f`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum((case when (`f`.`DEPARTURE_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_DEPARTURES`,round(avg(`f`.`DEPARTURE_DELAY`),2) AS `AVG_DEPARTURE_DELAY` from (`flights` `f` left join `airports` `a` on((`f`.`ORIGIN_AIRPORT` = `a`.`IATA_CODE`))) where (char_length(`f`.`ORIGIN_AIRPORT`) = 3) group by `f`.`ORIGIN_AIRPORT`,`a`.`AIRPORT`,`a`.`CITY`,`a`.`STATE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cancellation_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_cancellation_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cancellation_analysis` AS select `flights`.`AIRLINE` AS `AIRLINE`,`flights`.`CANCELLATION_REASON` AS `CANCELLATION_REASON`,count(0) AS `CANCELLED_FLIGHTS` from `flights` where (`flights`.`CANCELLED` = 1) group by `flights`.`AIRLINE`,`flights`.`CANCELLATION_REASON` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_daily_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_daily_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_daily_performance` AS select `flights`.`YEAR` AS `YEAR`,`flights`.`MONTH` AS `MONTH`,`flights`.`DAY` AS `DAY`,count(0) AS `TOTAL_FLIGHTS`,sum(`flights`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum(`flights`.`DIVERTED`) AS `DIVERTED_FLIGHTS`,sum((case when (`flights`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_FLIGHTS`,round(avg(`flights`.`DEPARTURE_DELAY`),2) AS `AVG_DEPARTURE_DELAY`,round(avg(`flights`.`ARRIVAL_DELAY`),2) AS `AVG_ARRIVAL_DELAY` from `flights` group by `flights`.`YEAR`,`flights`.`MONTH`,`flights`.`DAY` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_departure_delay_analysis`
--

/*!50001 DROP VIEW IF EXISTS `vw_departure_delay_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_departure_delay_analysis` AS select `flights`.`AIRLINE` AS `AIRLINE`,sum((case when (`flights`.`DEPARTURE_DELAY` <= 0) then 1 else 0 end)) AS `ON_TIME_FLIGHTS`,sum((case when ((`flights`.`DEPARTURE_DELAY` > 0) and (`flights`.`DEPARTURE_DELAY` <= 15)) then 1 else 0 end)) AS `DELAY_1_15_MIN`,sum((case when ((`flights`.`DEPARTURE_DELAY` > 15) and (`flights`.`DEPARTURE_DELAY` <= 60)) then 1 else 0 end)) AS `DELAY_16_60_MIN`,sum((case when (`flights`.`DEPARTURE_DELAY` > 60) then 1 else 0 end)) AS `DELAY_OVER_60_MIN` from `flights` group by `flights`.`AIRLINE` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_flights_clean`
--

/*!50001 DROP VIEW IF EXISTS `vw_flights_clean`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_flights_clean` AS select `flights`.`flight_id` AS `flight_id`,`flights`.`YEAR` AS `YEAR`,`flights`.`MONTH` AS `MONTH`,`flights`.`DAY` AS `DAY`,`flights`.`DAY_OF_WEEK` AS `DAY_OF_WEEK`,`flights`.`AIRLINE` AS `AIRLINE`,`flights`.`FLIGHT_NUMBER` AS `FLIGHT_NUMBER`,`flights`.`TAIL_NUMBER` AS `TAIL_NUMBER`,`flights`.`ORIGIN_AIRPORT` AS `ORIGIN_AIRPORT`,`flights`.`DESTINATION_AIRPORT` AS `DESTINATION_AIRPORT`,`flights`.`SCHEDULED_DEPARTURE` AS `SCHEDULED_DEPARTURE`,`flights`.`DEPARTURE_TIME` AS `DEPARTURE_TIME`,`flights`.`DEPARTURE_DELAY` AS `DEPARTURE_DELAY`,`flights`.`TAXI_OUT` AS `TAXI_OUT`,`flights`.`WHEELS_OFF` AS `WHEELS_OFF`,`flights`.`SCHEDULED_TIME` AS `SCHEDULED_TIME`,`flights`.`ELAPSED_TIME` AS `ELAPSED_TIME`,`flights`.`AIR_TIME` AS `AIR_TIME`,`flights`.`DISTANCE` AS `DISTANCE`,`flights`.`WHEELS_ON` AS `WHEELS_ON`,`flights`.`TAXI_IN` AS `TAXI_IN`,`flights`.`SCHEDULED_ARRIVAL` AS `SCHEDULED_ARRIVAL`,`flights`.`ARRIVAL_TIME` AS `ARRIVAL_TIME`,`flights`.`ARRIVAL_DELAY` AS `ARRIVAL_DELAY`,`flights`.`DIVERTED` AS `DIVERTED`,`flights`.`CANCELLED` AS `CANCELLED`,`flights`.`CANCELLATION_REASON` AS `CANCELLATION_REASON`,`flights`.`AIR_SYSTEM_DELAY` AS `AIR_SYSTEM_DELAY`,`flights`.`SECURITY_DELAY` AS `SECURITY_DELAY`,`flights`.`AIRLINE_DELAY` AS `AIRLINE_DELAY`,`flights`.`LATE_AIRCRAFT_DELAY` AS `LATE_AIRCRAFT_DELAY`,`flights`.`WEATHER_DELAY` AS `WEATHER_DELAY` from `flights` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_monthly_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_monthly_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_monthly_performance` AS select `flights`.`MONTH` AS `MONTH`,(case `flights`.`MONTH` when 1 then 'Jan' when 2 then 'Feb' when 3 then 'Mar' when 4 then 'Apr' when 5 then 'May' when 6 then 'Jun' when 7 then 'Jul' when 8 then 'Aug' when 9 then 'Sep' when 10 then 'Oct' when 11 then 'Nov' when 12 then 'Dec' end) AS `MONTH_NAME`,count(0) AS `TOTAL_FLIGHTS`,sum(`flights`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum(`flights`.`DIVERTED`) AS `DIVERTED_FLIGHTS`,sum((case when (`flights`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_FLIGHTS`,round(avg(`flights`.`DEPARTURE_DELAY`),2) AS `AVG_DEPARTURE_DELAY`,round(avg(`flights`.`ARRIVAL_DELAY`),2) AS `AVG_ARRIVAL_DELAY` from `flights` group by `flights`.`MONTH` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_route_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_route_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_route_performance` AS select `flights`.`ORIGIN_AIRPORT` AS `ORIGIN_AIRPORT`,`flights`.`DESTINATION_AIRPORT` AS `DESTINATION_AIRPORT`,count(0) AS `TOTAL_FLIGHTS`,sum(`flights`.`CANCELLED`) AS `CANCELLED_FLIGHTS`,sum((case when (`flights`.`ARRIVAL_DELAY` > 15) then 1 else 0 end)) AS `DELAYED_FLIGHTS`,round(avg(`flights`.`ARRIVAL_DELAY`),2) AS `AVG_ARRIVAL_DELAY` from `flights` group by `flights`.`ORIGIN_AIRPORT`,`flights`.`DESTINATION_AIRPORT` */;
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

-- Dump completed on 2026-09-18 21:48:55
