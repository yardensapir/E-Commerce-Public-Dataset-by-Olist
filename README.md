# Olist E-commerce Data Analysis

## Overview
This project analyzes the 2016-2018 performance data of Olist, a Brazilian e-commerce marketplace. Using Python and data science techniques, the analysis explores sales patterns, customer behavior, and product category performance to extract actionable business insights.

## Dataset
The analysis uses the Brazilian E-Commerce Public Dataset by Olist, which includes information about 100,000 orders made at Olist Store. The dataset contains multiple tables:
- Customers
- Orders
- Order Items
- Products
- Sellers
- Order Reviews
- Order Payments
- Product Category Translation
- Geolocation

## Project Structure

├── SQL/
├── Notebook/
├── Data/
└── README.md

## Key Analyses

### Category Revenue Analysis
- Identification of the most profitable product categories
- Year-by-year revenue breakdown by category
- Visualizations of category performance trends

### Seasonal Patterns Analysis
- Identification of categories with strong seasonal fluctuations
- Monthly distribution of sales by category
- Peak month analysis for strategic planning

### Product Performance Analysis
- Most profitable products by category
- Revenue concentration analysis
- Hidden gems (high satisfaction, low sales categories)

## Key Insights
1. Health & Beauty, Watches & Gifts, and Bed/Bath/Table are the top revenue-generating categories
2. Significant seasonal patterns exist in categories like Toys (holiday season) and Health & Beauty (August peak)
3. Several categories show high potential for growth based on customer satisfaction vs. sales volume

## Technologies Used
- Python
- Pandas & NumPy for data manipulation
- Matplotlib & Seaborn for data visualization
- Jupyter Notebooks for interactive analysis
- SQL for data querying

## How to Run
1. Clone this repository
2. Ensure you have the required Python packages installed:

pip install pandas numpy matplotlib seaborn jupyter

3. The data files should be placed in the `Data/` directory
4. Run the Jupyter notebooks in sequence to reproduce the analysis

## Business Applications
The insights from this analysis can be used for:
- Inventory planning based on seasonal demand
- Marketing strategy optimization
- Product portfolio decisions
- Seasonal promotional planning
