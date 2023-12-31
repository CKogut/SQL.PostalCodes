-- States, Counties
-- Write a Query that returns all the unique state names.
SELECT DISTINCT state FROM zipcodes;

-- Write a Query that returns all the Counties by State on separate lines.
SELECT DISTINCT state,county FROM zipcodes;

-- Write a Query that returns all the Counties by state, as a concatenated string.
SELECT state, GROUP_CONCAT(DISTINCT county SEPARATOR ', ') FROM zipcodes GROUP BY state;

-- Write a Query that returns number of Counties by state.
SELECT state, COUNT(DISTINCT county) FROM zipcodes GROUP BY state;

-- Write a Query that returns all of the individual timezones.
 SELECT DISTINCT timezone FROM zipcodes;


-- Notice anything peculiar?
-- Timezones aren't in any consistent format