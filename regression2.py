import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score

# Cargar datos
df = pd.read_csv('world_happiness_report.csv')

# Variables
X = df[['GDP_per_Capita', 'Social_Support', 'Healthy_Life_Expectancy', 
        'Freedom', 'Corruption_Perception', 'Unemployment_Rate', 'Income_Inequality']].dropna()
y = df.loc[X.index, 'Happiness_Score']

# Regresión
model = LinearRegression()
model.fit(X, y)

# Exportar coeficientes
coef_df = pd.DataFrame({
    'Variable': X.columns,
    'Coefficient': model.coef_
})
coef_df['R2'] = r2_score(y, model.predict(X))
coef_df.to_csv('regression_results.csv', index=False)
print("R²:", r2_score(y, model.predict(X)))
print(coef_df)