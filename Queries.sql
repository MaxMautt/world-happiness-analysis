-- 01 Data Quality
SELECT 
    COUNTIF(Country IS NULL) AS null_country,
    COUNTIF(Happiness_Score IS NULL) AS null_happiness,
    COUNTIF(GDP_per_Capita IS NULL) AS null_gdp,
    COUNTIF(Healthy_Life_Expectancy IS NULL) AS null_life_exp,
    COUNTIF(Corruption_Perception IS NULL) AS null_corruption,
    COUNTIF(Unemployment_Rate IS NULL) AS null_unemployment,
    COUNTIF(Year IS NULL) AS null_year
FROM `iowa-happiness-analysis.Happiness.Happiness`

-- 02 TOP Countries
SELECT m1.country, AVG(m1.Happiness_Score) AS average_happiness_score, AVG(m1.GDP_per_Capita) AS average_GDP_capita, AVG(m1.Healthy_Life_Expectancy) AS average_healthy_life_expectancy, AVG(m1.Corruption_Perception) AS average_corruption_perception, AVG(m1.Unemployment_Rate) AS average_unemployment_rate
FROM `iowa-happiness-analysis.Happiness.Happiness` AS m1
GROUP BY 1
ORDER BY 2 DESC 

-- 03 TOP Happiness_Score
SELECT m1.year, AVG(m1.Happiness_Score) AS average_happiness_score, m1.country
FROM `iowa-happiness-analysis.Happiness.Happiness` AS m1
GROUP BY 1,3
ORDER BY 2 DESC 