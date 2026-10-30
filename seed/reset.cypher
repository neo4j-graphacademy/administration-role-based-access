// Run against the system database to remove everything the lab creates.
DROP USER recommender IF EXISTS;
DROP USER support IF EXISTS;
DROP ROLE movie_recommender IF EXISTS;
DROP ROLE support_agent IF EXISTS;
