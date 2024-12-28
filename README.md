# FOOD-BEVERAGE-DOMAIN
## Overview
This project involves analyzing survey data to extract valuable insights for Codex Brands. It includes the use of advanced SQL techniques such as Common Table Expressions (CTEs) and window functions to calculate Key Performance Indicators (KPIs) and derive meaningful trends and metrics from the data.
## Data Sources
1. dim_cities: Contains city-related information, including City IDs, names, and tiers.

2. dim_respondents: Contains demographic details of respondents, such as age, gender, and the city they belong to.

3. fact_survey_responses: Contains survey response data, including consumption frequency, taste experience, reasons for consumption, and more.
## Example Queries
#### Average Taste Experience by City Tier
![Screenshot 2024-12-28 084443](https://github.com/user-attachments/assets/dde57ba3-c486-43c3-b0ee-9fd1798e436b)

#### Ranking Cities by Average Taste Experience
![Screenshot 2024-12-28 085516](https://github.com/user-attachments/assets/2b85a6c1-1170-4150-9e93-508eb7e2d89f)


## Key Features
### Data Exploration and Preparation
1. Joins between the dimension and fact tables to create a comprehensive dataset.
2. Data cleaning and handling of missing or inconsistent values.
### KPI Calculation
KPIs calculated include:
1. Brand Awareness: Proportion of respondents who have heard about Codex Brands.
2. Market Penetration: Proportion of respondents who have tried Codex Brands products.
3. Customer Satisfaction Index: Percentage of respondents rating taste experience above a threshold.
4. Average Taste Experience by City Tier: Insights into how the brand is perceived across different regions.
### Demographic Insights
1. Analysis of consumer demographics by age group, gender, and city tier.
2. Regional performance metrics for targeted marketing.
### Brand Awareness
44.47% of respondents have heard about Codex Brands.
### Market Penetration
48.81% of respondents have tried Codex Brands products.
### Average Taste Experience by City Tier
1. Tier 1 Cities: Average score of 3.27

2. Tier 2 Cities: Average score of 3.29


