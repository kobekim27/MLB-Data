
Baseball Statistics Database - PostgreSQL Project

Data Source:
------------
Data used includes player stats (hitters, pitchers), manager stats, attendance, and team records from MLB, Stathead, Baseball-reference.com, and ESPN.
Original CSVs were imported and processed with proper column filtering and conflict-safe insertion.

Instructions:
-------------
1. Run 'create.sql' in your PostgreSQL environment to initialize the schema.
2. Use 'load.sql' to insert all data.
   This version avoids PRIMARY KEY conflicts by using: ON CONFLICT DO NOTHING

Files in this package:
-----------------------
- create.sql                : SQL schema for all tables (hitters, pitchers, managers, attendance, teams)
- load.sql: SQL insert statements that skip duplicate keys using ON CONFLICT DO NOTHING
- hitters.csv               : Hitter statistics
- pitchers.csv              : Pitcher statistics
- managers.csv              : Manager stats (challenges, ejections)
- mlb_attendance.csv        : Home/away attendance data
- teams.csv                 : Team season records and finish position
- age.csv		      : Player's age
- divisons.csv              : Divisions(American league/National league)
Relevant Links:
---------------
MLB Attendance Data: https://www.espn.com/mlb/attendance/_/year/2024
Hitter and Pitcher Data: https://stathead.com/baseball/
Manager Data: https://www.baseball-reference.com/leagues/majors/2024-managers.shtml
