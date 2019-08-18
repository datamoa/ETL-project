Select * from housing_rate
Select * from states
Select * from joined_db
Create table joined_db as
SELECT income.states, income.population, income.emp_rate, income.income_per_capita, states.abbreviation
From income
LEFT JOIN states ON
income.states = states.state

Create table real_estate as
SELECT joined_db.population, joined_db.emp_rate, joined_db.income_per_capita, joined_db.abbreviation, housing_rate.year_2010
From joined_db
LEFT JOIN housing_rate ON
joined_db.abbreviation = housing_rate.state
Select * from real_estate
	
ALTER TABLE real_estate 
RENAME COLUMN abbreviation TO states;