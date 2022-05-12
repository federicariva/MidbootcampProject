# Iron hack Midbootcamp Project - Regression Case Study
by [Federica Riva](https://github.com/federicariva) & [Cath Vos](https://github.com/cathvos), May 2021
<br/><br/>
## Prediciting the selling price of houses

![Classification Case Study](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/project+banners/real-state-project.jpg)

## Table of content

- [Project Brief](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/README.md#project-brief)
- [Data](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/README.md#data)
- [Process & Tools](https://github.com/lillaszulyovszky/ironhack-case-study-classification#process--tools)
- [Visualization](https://github.com/lillaszulyovszky/ironhack-case-study-classification#visualizations)
- [Key Take Aways](https://github.com/lillaszulyovszky/ironhack-case-study-classification#key-take-aways)

## Project Brief
**Scenario:**
We are working as analysts for a real estate company. Our company wants to build a machine learning model to predict the selling prices 
of houses based on a variety of features on which the value of the house is evaluated.

**Challenge:**
To build a model that will predict the price of a house based on features provided in the dataset. The senior management also wants to explore the characteristics of the houses using some business intelligence tool. One of those parameters include understanding which factors are responsible for higher property value - $650K and above.

**Problem:**
Can we build a machine learning model that predicts the selling price of houses?<br/><br/>

Further project details such as deliverables can be found [here](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/project_details)

## Data

Leveraging on the [data](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/data_sets) we were provided with, we used Tableau's and Python's data visualisation tools to explore the relationships between features. <br/> <br/>
To find out more about the distribution of the important features we highlighted, you can have a look on our Tableau dashboard below:<br/>
![Tableau Dashboard](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/images/metrics_visuals/tableau_dashboard.png?raw=true)
<br/>
<br/>For further details on all features, please refer to the [notebook](https://github.com/lillaszulyovszky/ironhack-case-study-classification/blob/main/code/Case%20Study%20-%20Classification.ipynb).

## Process & Tools

**Process**

![workflow](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gbtec.com%2Fes%2Frecursos%2Fprocess-mining%2F&psig=AOvVaw3Svuvf9fIZujjdyrWwlRpX&ust=1652461556448000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIiapZa52vcCFQAAAAAdAAAAABAD)

- **Github:** set up our Github repo to collaborate on. <br/>
- **Trello:** set up our Trello board to stay organised and reprioritise daily.<br/>
- **SQL:** started with the independent task of completing the SQL queries<br/>
- **EDA:** assessment of dataframe to prepare for cleaning<br/>
- **Data cleaning & wrangling in Python:** drop 'date' column, check for duplicates, drop null values, convert float columns to int<br/>
- **Prepocessing:** 3 methods - xx, xx and xx<br/>
- **Machine Learning Model:** using scikit learn<br/>
**- iteration 1 (X):** run the base model after basic cleaning steps (duplicates and nulls) and not including ID, and date, to be able to use this as a benchmark<br/>
**- iteration 2 (X_i2):** removed ID duplicates, dropped wrongly reported data point, dummified yr_renoved, transformed yr_built to age and zip code to distance from most expensive zipcode<br/>
**- iteration 3 (X_i3):** check for multi collinearity and dropping sqft_above, sqft_living15 and sqft_lot15 <br/>
**- iteration 4 (X_i4):** dummified view and sqft_basement, grouped condition 1 and 2 together and dummified this column <br/>
**- iteration 5 (X_i5):** dropped age and column sqft_lot because they have a correlation with price lower then 0.1 <br/>
**- iteration 6 (X_i5):** using Decision tree model on the df of iteration 2 to check which model is stronger <br/>

**Tools**
 - **Database:** MyWorkbench - [Link to SQL folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/sql)
 - **Vizualizations:** Tableau
 - **Code:** Jupyter Notebook - [Link to code folder](https://github.com/lillaszulyovszky/ironhack-case-study-classification/tree/main/code)

## Visualizations

For further visualisations check out our Tableau workbook or the presentation we've done below.

[Tableau](https://public.tableau.com/app/profile/cath7944/viz/IHprojectweek5/Dashboard?publish=yes) <br/>
[Presentation](https://slides.com/josephinebiedermann/deck)

## Key Take Aways

### 1. Our model can predict a customer accepting or declining the credit card offer with an accuracy of 84%
### 2. We suspect the following features to impact the customers decision to accept the most:
  - mailer type
  - credit rating
  - income level
  - reward
# 

**Thank you for reading!** <br/>
If you have any questions, please reach out to us.<br/><br/>
Team
