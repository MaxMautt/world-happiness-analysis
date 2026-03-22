# World Happiness Analysis — Global Indicators (2005–2023)

## Overview
Analysis of global happiness indicators across 10 countries from 2005 to 2023, 
exploring the relationship between economic, social, and political factors and 
overall happiness scores. Includes an interactive dynamic scatter plot and a 
multiple linear regression model.

## Dataset
- **Source:** Kaggle — World Happiness Report
- **Records:** 4,000 rows
- **Variables:** 24 indicators including GDP, social support, freedom, 
corruption, unemployment, and more

## Tools Used
- **SQL (Google BigQuery)** — Data exploration and quality checks
- **Python (scikit-learn)** — Multiple linear regression model
- **Power BI** — Interactive dashboard with dynamic visualizations

## Analyses Performed
1. Happiness Score, Unemployment Rate & Corruption by Country
2. Average Happiness Score trend by Year (2005–2023)
3. Dynamic scatter plot — Happiness Score vs any selected variable
4. Multiple linear regression — 7 predictors of Happiness Score

## Regression Results
**Dependent variable:** Happiness Score  
**Predictors:** GDP per Capita, Social Support, Healthy Life Expectancy, 
Freedom, Corruption Perception, Unemployment Rate, Income Inequality

| Variable | Coefficient |
|----------|-------------|
| Freedom | 0.132 |
| Corruption Perception | 0.074 |
| Social Support | 0.033 |
| Healthy Life Expectancy | 0.002 |
| GDP per Capita | 0.000001 |
| Unemployment Rate | -0.007 |
| Income Inequality | -0.003 |

**R² = 0.0025**

> Note: The low R² suggests the dataset may contain synthetic or aggregated 
data. The coefficient directions align with theoretical expectations — 
Freedom and Social Support positively predict happiness, while Unemployment 
and Income Inequality negatively predict it.

## Interactive Dashboard
[Power BI Dashboard](https://app.powerbi.com/groups/me/reports/75c15b2a-6078-49b8-a610-635110b0f532?pbi_source=desktop)

## Files
- `regression2.py` — Multiple linear regression script
- `regression_results.csv` — Regression coefficients output
- `world_happiness_report.csv` — Dataset
