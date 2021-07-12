-- Create a new table called 'covid_vaccinations'
-- Drop the table if it already exists
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'covid_vaccinations') AND type in (N'U'))
DROP TABLE covid_vaccinations
GO

-- Create the table in the specified schema
CREATE TABLE covid_vaccinations(
	[iso_code] [nvarchar](255) NULL,
      [continent] [nvarchar](255) NULL,
      [location] [nvarchar](50) NULL,
      [date] [date] NULL,
      [new_tests] [float] NULL,
      [total_tests] [float] NULL,
      [total_tests_per_thousand] [float] NULL,
      [new_tests_per_thousand] [float] NULL,
      [new_tests_smoothed] [float] NULL,
      [new_tests_smoothed_per_thousand] [float] NULL,
      [positive_rate] [float] NULL,
      [tests_per_case] [float] NULL,
      [tests_units] [varchar](50) NULL,
      [total_vaccinations] [float] NULL,
      [people_vaccinated] [float] NULL,
      [people_fully_vaccinated] [float] NULL,
      [new_vaccinations] [float] NULL,
      [new_vaccinations_smoothed] [float] NULL,
      [total_vaccinations_per_hundred] [float] NULL,
      [people_vaccinated_per_hundred] [float] NULL,
      [people_fully_vaccinated_per_hundred] [float] NULL,
      [new_vaccinations_smoothed_per_million] [float] NULL,
      [stringency_index] [float] NULL,
      [population_density] [float] NULL,
      [median_age] [float] NULL,
      [aged_65_older] [float] NULL,
      [aged_70_older] [float] NULL,
      [gdp_per_capita] [float] NULL,
      [extreme_poverty] [float] NULL,
      [cardiovasc_death_rate] [float] NULL,
      [diabetes_prevalence] [float] NULL,
      [female_smokers] [float] NULL,
      [male_smokers] [float] NULL,
      [handwashing_facilities] [float] NULL,
      [hospital_beds_per_thousand] [float] NULL,
      [life_expectancy] [float] NULL,
      [human_development_index] [float] NULL
)
GO

--Insert data into table from CSV
BULK INSERT covid_vaccinations
FROM 'covid_vaccinations.csv'
WITH (FORMAT = 'CSV'
      , FIRSTROW=2)
GO

--View first 23 rows of the table
SELECT TOP (23) [iso_code]
      ,[continent]
      ,[location]
      ,[date]
      ,[new_tests]
      ,[total_tests]
      ,[total_tests_per_thousand]
      ,[new_tests_per_thousand]
      ,[new_tests_smoothed]
      ,[new_tests_smoothed_per_thousand]
      ,[positive_rate]
      ,[tests_per_case]
      ,[tests_units]
      ,[total_vaccinations]
      ,[people_vaccinated]
      ,[people_fully_vaccinated]
      ,[new_vaccinations]
      ,[new_vaccinations_smoothed]
      ,[total_vaccinations_per_hundred]
      ,[people_vaccinated_per_hundred]
      ,[people_fully_vaccinated_per_hundred]
      ,[new_vaccinations_smoothed_per_million]
      ,[stringency_index]
      ,[population_density]
      ,[median_age]
      ,[aged_65_older]
      ,[aged_70_older]
      ,[gdp_per_capita]
      ,[extreme_poverty]
      ,[cardiovasc_death_rate]
      ,[diabetes_prevalence]
      ,[female_smokers]
      ,[male_smokers]
      ,[handwashing_facilities]
      ,[hospital_beds_per_thousand]
      ,[life_expectancy]
      ,[human_development_index]
  FROM [dbo].[covid_vaccinations]

--Replace NULL values with '0'
UPDATE [dbo].[covid_vaccinations]
SET [continent] = 0
WHERE [continent] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_tests] = 0
WHERE [new_tests] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [total_tests] = 0
WHERE [total_tests] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [total_tests_per_thousand] = 0
WHERE [total_tests_per_thousand] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_tests_per_thousand] = 0
WHERE [new_tests_per_thousand] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_tests_smoothed] = 0
WHERE [new_tests_smoothed] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_tests_smoothed_per_thousand] = 0
WHERE [new_tests_smoothed_per_thousand] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [positive_rate] = 0
WHERE [positive_rate] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [tests_per_case] = 0
WHERE [tests_per_case] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [tests_units] = 0
WHERE [tests_units] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [total_vaccinations] = 0
WHERE [total_vaccinations] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [people_vaccinated] = 0
WHERE [people_vaccinated] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [people_fully_vaccinated] = 0
WHERE [people_fully_vaccinated] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_vaccinations] = 0
WHERE [new_vaccinations] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_vaccinations_smoothed] = 0
WHERE [new_vaccinations_smoothed] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [total_vaccinations_per_hundred] = 0
WHERE [total_vaccinations_per_hundred] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [people_vaccinated_per_hundred] = 0
WHERE [people_vaccinated_per_hundred] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [people_fully_vaccinated_per_hundred] = 0
WHERE [people_fully_vaccinated_per_hundred] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [new_vaccinations_smoothed_per_million] = 0
WHERE [new_vaccinations_smoothed_per_million] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [stringency_index] = 0
WHERE [stringency_index] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [population_density] = 0
WHERE [population_density] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [median_age] = 0
WHERE [median_age] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [aged_65_older] = 0
WHERE [aged_65_older] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [aged_70_older] = 0
WHERE [aged_70_older] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [gdp_per_capita] = 0
WHERE [gdp_per_capita] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [extreme_poverty] = 0
WHERE [extreme_poverty] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [cardiovasc_death_rate] = 0
WHERE [cardiovasc_death_rate] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [diabetes_prevalence] = 0
WHERE [diabetes_prevalence] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [female_smokers] = 0
WHERE [female_smokers] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [male_smokers] = 0
WHERE [male_smokers] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [handwashing_facilities] = 0
WHERE [handwashing_facilities] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [hospital_beds_per_thousand] = 0
WHERE [hospital_beds_per_thousand] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [life_expectancy] = 0
WHERE [life_expectancy] IS NULL;

UPDATE [dbo].[covid_vaccinations]
SET [human_development_index] = 0
WHERE [human_development_index] IS NULL;
