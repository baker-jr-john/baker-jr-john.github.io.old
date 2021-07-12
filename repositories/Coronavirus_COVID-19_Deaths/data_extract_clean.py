# import libraries
import pandas as pd

# Load the dataset directly from the source   
covid_data = pd.read_csv('https://covid.ourworldindata.org/data/owid-covid-data.csv')

# Split the dataset into two tables
covid_deaths = pd.concat([covid_data.iloc[:,:4],pd.DataFrame(covid_data['population']),covid_data.iloc[:,4:25]], axis = 1)
covid_vaccinations = pd.concat([covid_data.iloc[:,:4],covid_data.iloc[:,25:44],covid_data.iloc[:,45:]],axis =1)

if 'excess_mortality' in covid_vaccinations.columns:
  covid_vaccinations.drop(columns = ['excess_mortality'], inplace = True)
            
# Save data as csv
covid_deaths.to_csv('covid_deaths.csv',index = False)
covid_vaccinations.to_csv('covid_vaccinations.csv',index = False)
