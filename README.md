# Student Performance Analysis

## Project Overview

This project is designed to analyze student performance data. The analysis includes data preprocessing, feature engineering, exploratory data analysis (EDA), and building a linear regression model to predict final grades based on various factors.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Dataset](#dataset)
- [Data Preprocessing](#data-preprocessing)
- [Modeling](#modeling)
- [Evaluation](#evaluation)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- Data Preprocessing: Handling missing values and removing unnecessary predictors.
- Feature Engineering: Creating dummy variables for categorical features.
- Exploratory Data Analysis (EDA): Visualizing data distributions and correlations.
- Linear Regression Model: Building and evaluating a predictive model.
- Assumption Checking: Validating model assumptions using statistical tests
- 
The dataset used in this project is a CSV file containing student performance data. The dataset includes various predictors such as previous grades, parental support, and more. The target variable is the final grade.


**Data Preprocessing**
Removed unnecessary columns (e.g., student ID, school).
Checked for and handled any missing values.
Created dummy variables for categorical features like gender and parental support.
Combined the processed data into a final dataset ready for analysis.
**Modeling**
Split the data into training and testing sets using a 70-30 split.
Built a linear regression model to predict the final grade.
Evaluated the model using R-squared and other relevant metrics.
Checked model assumptions using statistical tests and visualizations.
**Evaluation**
The model was evaluated using the following:

**R-Squared Value**: Indicates the proportion of variance in the dependent variable that is predictable from the independent variables.
**Residual Plots**: Checked the distribution of residuals to validate normality assumptions.
**Results**
The linear regression model provided a reasonable prediction of student final grades based on the available data. Further tuning and additional features could enhance model performance.

Contributing
If you would like to contribute to this project, feel free to fork the repository and submit a pull request. All contributions are welcome!

License
This project is licensed under the MIT License. See the LICENSE file for details.

Contact
For any questions or feedback, please contact:

Your Name - h.v.tilawane@gmail.com
GitHub: Fisherbaba
