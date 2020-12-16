# Database-Project-26
Repository for Database Project Group 26

## Team:
Zach Hall

## Introduction

With the threat of the Corona virus, food delivery services are more important than ever.  Local restaurants are eager to find easy ways to have food delivered to customers without having to hire delivery employees. Even when things return to normal, many experts feel that food delivery will be something that we all will have become accustomed to as a part of our regular activites (even more than before). Students love food delivery services on campus.  Campuses do not like the steady stream of visitors that may or  may not have a formal connection with the university.  Companies such as UberEats and GrubHub are happy to deliver on campus, but many schools are wondering if they should take control of the delivery and ensure that students and authorized university employees are the only ones delivering food on campus for safety and health reasons.

This project will add a rating system for drivers and restaurants. The rating system will allow customers to rate both their driver and the restaurant. They can rate each time they place an order, once the food has been delivered. The rating system will be using 5 level system. The customer can also add a short comment if they so choose.


## Use Case for Rating System:
[Use Case](https://github.com/zhall6/Database-Project-26/blob/main/images/Use%20Case.jpg)

## Business Rules:
- Students can be drivers
- Customers must be registered
- Customers must order from a restaurant before rating it
- Delivery must be made before the driver can be rated
- Admin can view drivers' and restaurants' ratings
- Ratings will be between 1 and 5
- Comments may be added

## EERD:
[EERD](https://github.com/zhall6/Database-Project-26/blob/main/images/EERD%203.jpg)

- The database contains 12 tables and has some rules
- An order belongs to a restaurant and driver
- Students can be drivers
- Ratings for resaurants/drivers can only be completed after the order has been delviered
- Each restaurant and driver can have a rating
- Comments can be added to a rating

## Data Dictionary
[Data Dictionary](https://github.com/zhall6/Database-Project-26/blob/main/DataDictionary/DataDictionary2.pdf)

## MySQL Queries:
[MySQL Queries](https://github.com/zhall6/Database-Project-26/tree/main/MySQL%20Queries)

## Advanced Views:
[Advanced View for Restaurant](https://github.com/zhall6/Database-Project-26/blob/main/MySQL%20Queries/Advanced%20View.jpg)  
[Advanced View for Driver](https://github.com/zhall6/Database-Project-26/blob/main/MySQL%20Queries/Advanced%20View%202.jpg)


## Stored Procedure:
There are 4 procedures:
- add_driver_score - allows the customer to rate a driver
- add_restaurant_score - allows the customer to rate a restaurant
- avg_driver_score - averages the score of a driver
- avg_restaurant_score - averages the score of a restaurant


## MySQL Dump
[Data Dump](https://github.com/zhall6/Database-Project-26/blob/main/Data%20Dump/DataDump3.sql)

## PPT Video:
TBD
