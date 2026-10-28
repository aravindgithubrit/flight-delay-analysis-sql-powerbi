Flight Delay Analysis Using MySQL and Power BI
Project Overview
This project analyzes approximately 5.8 million flight records to identify flight delays, cancellations, airline performance, airport efficiency, and route performance using MySQL and Power BI.

Technologies Used
MySQL 8.0
SQL
Power BI
CSV and JSON datasets
Dataset
The project uses three main tables:

Flights: Flight details, delays, cancellations, diversions, and delay reasons.
Airlines: Airline codes and names.
Airports: Airport names, cities, states, and geographical details.
Key Analysis
Airline performance and flight delays
Airport performance and delayed departures
Monthly and daily flight trends
Flight cancellation reasons
Departure delay categories
Route performance and aircraft analysis
SQL Views
The project includes analytical views such as:

vw_airline_performance
vw_airport_performance
vw_monthly_performance
vw_daily_performance
vw_cancellation_analysis
vw_departure_delay_analysis
vw_route_performance
vw_aircraft_performance
vw_flights_clean
Key Performance Indicators (KPIs)
Total Flights
Cancelled Flights and Cancellation Rate
Diverted Flights
Delayed Flights
Average Departure Delay
Average Arrival Delay
Delay Reasons by Airline
How to Run
Install MySQL Server and MySQL Workbench.
Create the flight_project database.
Import the flight, airline, and airport datasets.
Execute the SQL script to create the analytical views.
Connect MySQL to Power BI.
Build interactive dashboards using the views.
Project Outcome
The project provides insights into flight operations, airline reliability, airport efficiency, and delay patterns through SQL analysis and Power BI dashboards.
