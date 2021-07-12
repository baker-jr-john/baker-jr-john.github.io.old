-- Create a new table called 'covid_deaths'
-- Drop the table if it already exists
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'covid_deaths') AND type in (N'U'))
DROP TABLE covid_deaths
GO

-- Create the table in the specified schema
CREATE TABLE covid_deaths(
	[iso_code] [nvarchar](255) NULL,
	[continent] [nvarchar](255) NULL,
	[location] [nvarchar](50) NULL,
	[date] [date] NULL,
	[population] [float] NULL,
	[total_cases] [float] NULL,
	[new_cases] [float] NULL,
	[new_cases_smoothed] [float] NULL,
	[total_deaths] [float] NULL,
	[new_deaths] [float] NULL,
	[new_deaths_smoothed] [float] NULL,
	[total_cases_per_million] [float] NULL,
	[new_cases_per_million] [float] NULL,
	[new_cases_smoothed_per_million] [float] NULL,
	[total_deaths_per_million] [float] NULL,
	[new_deaths_per_million] [float] NULL,
	[new_deaths_smoothed_per_million] [float] NULL,
	[reproduction_rate] [float] NULL,
	[icu_patients] [float] NULL,
	[icu_patients_per_million] [float] NULL,
	[hosp_patients] [float] NULL,
	[hosp_patients_per_million] [float] NULL,
	[weekly_icu_admissions] [float] NULL,
	[weekly_icu_admissions_per_million] [float] NULL,
	[weekly_hosp_admissions] [float] NULL,
	[weekly_hosp_admissions_per_million] [float] NULL
)
GO

--Insert data into table from CSV
BULK INSERT covid_deaths
FROM 'covid_deaths.sql'
WITH (FORMAT = 'CSV'
      , FIRSTROW=2)
GO

--View first 23 rows of the table
SELECT TOP (23) [iso_code]
      ,[continent]
      ,[location]
      ,[date]
      ,[population]
      ,[total_cases]
      ,[new_cases]
      ,[new_cases_smoothed]
      ,[total_deaths]
      ,[new_deaths]
      ,[new_deaths_smoothed]
      ,[total_cases_per_million]
      ,[new_cases_per_million]
      ,[new_cases_smoothed_per_million]
      ,[total_deaths_per_million]
      ,[new_deaths_per_million]
      ,[new_deaths_smoothed_per_million]
      ,[reproduction_rate]
      ,[icu_patients]
      ,[icu_patients_per_million]
      ,[hosp_patients]
      ,[hosp_patients_per_million]
      ,[weekly_icu_admissions]
      ,[weekly_icu_admissions_per_million]
      ,[weekly_hosp_admissions]
      ,[weekly_hosp_admissions_per_million]
  FROM [dbo].[covid_deaths]

--Replace NULL values with '0'
UPDATE [dbo].[covid_deaths]
SET [continent] = 0
WHERE [continent] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_cases] = 0
WHERE [new_cases] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_cases_smoothed] = 0
WHERE [new_cases_smoothed] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [total_deaths] = 0
WHERE [total_deaths] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_deaths] = 0
WHERE [new_deaths] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_deaths_smoothed] = 0
WHERE [new_deaths_smoothed] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [total_cases_per_million] = 0
WHERE [total_cases_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_cases_per_million] = 0
WHERE [new_cases_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_cases_smoothed_per_million] = 0
WHERE [new_cases_smoothed_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [total_deaths_per_million] = 0
WHERE [total_deaths_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_deaths_per_million] = 0
WHERE [new_deaths_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [new_deaths_smoothed_per_million] = 0
WHERE [new_deaths_smoothed_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [reproduction_rate] = 0
WHERE [reproduction_rate] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [icu_patients] = 0
WHERE [icu_patients] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [icu_patients_per_million] = 0
WHERE [icu_patients_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [hosp_patients] = 0
WHERE [hosp_patients] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [hosp_patients_per_million] = 0
WHERE [hosp_patients_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [weekly_icu_admissions] = 0
WHERE [weekly_icu_admissions] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [weekly_icu_admissions_per_million] = 0
WHERE [weekly_icu_admissions_per_million] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [weekly_hosp_admissions] = 0
WHERE [weekly_hosp_admissions] IS NULL;

UPDATE [dbo].[covid_deaths]
SET [weekly_hosp_admissions_per_million] = 0
WHERE [weekly_hosp_admissions_per_million] IS NULL;
