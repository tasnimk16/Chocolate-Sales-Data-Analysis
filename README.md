# Chocolate-Sales-Data-Analysis
Exploratory data analysis of chocolate sales data using base R, including data cleaning and visualization.

Overview

This project is a data analysis exercise using base R to explore a chocolate sales dataset. It follows a structured analytical workflow (data loading, cleaning, aggregation, and visualization) to generate insights similar to those produced in real-world sales reporting and exploratory analysis tasks.

Problem Statement

Raw sales data often contains inconsistencies such as formatted currency values and non-standardized dates, making analysis difficult without preprocessing. Additionally, understanding which products and regions contribute most to revenue requires aggregating and visualizing transaction-level data. This project addresses these challenges by cleaning and analyzing sales records to extract meaningful performance insights.

Data & Assumptions

The dataset consists of transactional chocolate sales records, including:

Transaction date

Country of sale

Product type

Number of boxes shipped

Total sale amount (USD)


Approach

Import the dataset using base R functions

Inspect data structure and summary statistics to assess data quality

Clean sales amount values by removing currency formatting and converting to numeric

Convert date strings to standardized Date objects

Compute descriptive statistics, including total and average sales

Aggregate sales by country and product to identify high-level patterns

Visualize results using bar charts, histograms, and scatter plots

Output

Total and average sales metrics

Aggregated sales summaries by country and product

Visualizations illustrating revenue distribution and the shipment and sales relationship
