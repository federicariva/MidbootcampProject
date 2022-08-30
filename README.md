# Iron hack Midbootcamp Project - Regression Case Study
by [Federica Riva](https://github.com/federicariva) & [Cath Vos](https://github.com/cathvos), May 2021
<br/><br/>
## Prediciting the selling price of houses



 <img src="https://raw.githubusercontent.com/cathvos/MidbootcampProject/main/images/house%202.jpeg" width="600" height="350">

## Table of content

- [Project Brief](#project-brief)
- [Data](#data)
- [Process & Tools](#Process-Tools)
- [Visualizations](#Visualizations)
- [Key Take Aways](#Key-Take-Aways)

## Project Brief
**Scenario:**
We are working as analysts for a real estate company. Our company wants to build a machine learning model to predict the selling prices 
of houses based on a variety of features on which the value of the house is evaluated.

**Challenge:**
To build a model that will predict the price of a house based on features provided in the dataset. 

The senior management also wants to explore the characteristics of the houses using some business intelligence tools, one of those parameters include understanding which factors are responsible for higher property value - $650K and above.

**Problem:**
Can we build a machine learning model that predicts the selling price of houses?<br/><br/>

## Data

Working with the [data](https://github.com/cathvos/MidbootcampProject/tree/main/datasets) provided, we used mainly Tableau's data visualisation tools as well as Python´s to explore the relationships between features. <br/> <br/>

![workflow](https://raw.githubusercontent.com/cathvos/MidbootcampProject/main/Images/Screenshot%202022-05-12%20at%2018.50.33.png)
![workflow](https://raw.githubusercontent.com/cathvos/MidbootcampProject/main/Images/Screenshot%202022-05-12%20at%2018.51.05.png)
<br/>
To find out more about the distribution of the important features, you can have a look on our Tableau dashboard: [Tableau Dashboard](https://public.tableau.com/app/profile/cath7944/viz/IHprojectweek5/Dashboard?publish=yes)

<br/>For further details on all features, please refer to the [notebook](https://github.com/cathvos/MidbootcampProject/blob/main/code/Python_code.ipynb).

## Process & Tools

**Process**

![workflow](https://github.com/cathvos/MidbootcampProject/blob/main/images/Process.jpeg?raw=true)

- **Github:** set up our Github repo to collaborate on. <br/>
- **Trello:** set up our Trello board to stay organised and reprioritise daily.<br/>
- **SQL:** completed the SQL queries<br/>
- **EDA:** assessment of dataframe to prepare for cleaning<br/>
- **Data cleaning & wrangling in Python:** drop 'date' column, check for duplicates, drop null values, convert float columns to int<br/>
- **Prepocessing:** 3 methods - data cleaning, data transformation and data reduction<br/>
- **Machine Learning Model:** using scikit learn<br/>
**- iteration 1 (X):** run the base model after basic cleaning steps (duplicates and nulls) and not including ID, and date, to be able to use this as a benchmark<br/>
**- iteration 2 (X_i2):** removed ID duplicates, dropped wrongly reported data point, dummified yr_renoved, transformed yr_built to age and zip code to distance from most expensive zipcode<br/>
**- iteration 3 (X_i3):** check for multi collinearity and dropping sqft_above, sqft_living15 and sqft_lot15 <br/>
**- iteration 4 (X_i4):** dummified view and sqft_basement, grouped condition 1 and 2 together and dummified this column <br/>
**- iteration 5 (X_i5):** dropped age and column sqft_lot because they have a correlation with price lower then 0.1 <br/>
**- iteration 6 (X_i5):** using Decision tree model on the df of iteration 2 to check which model is stronger <br/>

**Tools**
 - **Database:** MyWorkbench - [Link to SQL folder](https://github.com/cathvos/MidbootcampProject/tree/main/datasets)
 - **Vizualizations:** Tableau
 - **Code:** Jupyter Notebook - [Link to code folder](https://github.com/cathvos/MidbootcampProject/tree/main/code)

## Visualizations

For further visualisations check out our Tableau workbooks or the presentation we've done below.

[Tableau](https://public.tableau.com/app/profile/cath7944/viz/IHprojectweek5/Dashboard?publish=yes) <br/>
[Tableau extra](https://public.tableau.com/app/profile/cath7944/viz/IHprojectweek5extra/DetailDashboard2) <br/>
[Presentation](https://github.com/cathvos/MidbootcampProject/blob/main/deliverables/Project_presentation.pptx)

## Key Take Aways

### 1. Our model can predict the price of a house with an accuracy of 80%
### 2. The mean absolute error of the best model is around 100K
# 

**Thank you for reading!** <br/>
If you have any questions, please reach out to us.<br/><br/>
