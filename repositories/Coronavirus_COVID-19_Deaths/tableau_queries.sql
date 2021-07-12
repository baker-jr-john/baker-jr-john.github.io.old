/*
Queries used for Tableau visualizations
*/

--GLOBAL NUMBERS
CREATE VIEW global_numbers AS 
SELECT 
  --vaccinations.location, 
  SUM(deaths.new_cases) AS total_cases, 
  SUM(
    CAST(deaths.new_deaths AS int)
  ) AS total_deaths, 
  MAX(vaccinations.people_fully_vaccinated) AS people_fully_vaccinated
FROM 
  [dbo].[covid_deaths] deaths 
  JOIN [dbo].[covid_vaccinations] vaccinations ON deaths.location = vaccinations.location 
  AND deaths.date = vaccinations.date 
WHERE 
  deaths.location NOT IN (
    'Africa', 'Asia', 'Europe', 'European Union', 
    'International', 'North America', 
    'Oceania', 'South America', 'World'
  ) 
  AND vaccinations.location NOT IN (
    'Africa', 'Asia', 'Europe', 'European Union', 
    'International', 'North America', 
    'Oceania', 'South America', 'World'
  ) 
GO 

--Countries with Highest Death Count per Population
CREATE VIEW death_count_per_pop AS 
  SELECT 
    location, 
    SUM(
      CAST(new_deaths as int)
    ) AS total_death_count 
  FROM 
    [dbo].[covid_deaths] 
  WHERE 
    location IN ( 
      'Brazil', 'China', 'France', 'India', 'Russia', 'United States'
    ) 
  GROUP BY 
    location 
  --ORDER BY 
    --total_death_count DESC
GO

--Countries with Highest Infection Rate compared to Population
CREATE VIEW infection_rate_per_pop AS 
  SELECT 
    location, 
    population, 
    MAX(total_cases) AS highest_infection_count, 
    MAX(total_cases / population)* 100 AS percent_pop_infected 
  FROM 
    [dbo].[covid_deaths] 
  GROUP BY 
    location, 
    population 
  --ORDER BY 
    --percent_pop_infected DESC
GO

--Countries with Highest Infection Rate compared to Population by Date
CREATE VIEW infection_rate_per_pop_by_date AS 
  SELECT 
    location, 
    population, 
    date, 
    MAX(total_cases) AS highest_infection_count, 
    (
      MAX(total_cases / population)
    )* 100 AS percent_pop_infected 
  FROM 
    [dbo].[covid_deaths] 
  GROUP BY 
    location, 
    population, 
    date 
  --ORDER BY 
    --percent_pop_infected DESC
GO

/*
Exploratory queries 
*/

SELECT 
  date, 
  people_fully_vaccinated 
FROM 
  [dbo].[covid_vaccinations] 
WHERE 
  [location] IN ('United States') 
  AND date = (
    select 
      max(date) 
    FROM 
      [dbo].[covid_vaccinations] 
    WHERE 
      [location] IN ('United States')
  ) 
GO

SELECT 
  people_fully_vaccinated 
FROM 
  [dbo].[covid_vaccinations] 
WHERE 
  date = (
    SELECT 
      MAX(date) 
    FROM 
      [dbo].[covid_vaccinations] 
    WHERE 
      location NOT IN (
        'Africa', 'Asia', 'Europe', 'European Union', 
        'International', 'North America', 
        'Oceania', 'South America', 'World'
      )
  ) 
GO
