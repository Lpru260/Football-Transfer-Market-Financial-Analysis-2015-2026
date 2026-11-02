⚽ Football Transfer Market Financial Analysis (2015–2026)
📖 Project Overview
This project explores financial and market dynamics in professional football transfers between 2015 and 2026 using Transfermarkt data.

The analysis focuses on answering key business questions related to club transfer strategies, spending efficiency, player valuation, and market evolution over time.

The project was developed using:

SQL Server (T-SQL)
Power Query
Microsoft Excel
Interactive Dashboard Design
🎯 Business Questions
Club Financial Performance
Which clubs generate the highest transfer profits?
Which clubs operate as sustainable player-trading organizations?
Which clubs consistently spend more than they earn?
Transfer Efficiency
Which clubs pay the highest premiums compared to market value?
Which clubs appear to negotiate transfers most efficiently?
Player Valuation
At what age are players most valuable in the transfer market?
How does transfer pricing differ across playing positions?
Market Trends
How has the transfer market evolved since 2015?
How have transfer spending and overspending changed over time?
🗂️ Dataset
Source: Transfermarkt

Period Covered: 2015–2026

The dataset contains information about:

Transfer fees
Market values
Player demographics
Club information
Competition data
Transfer dates and seasons
🛠️ SQL Analysis
1. Club Financial Balance
Objective
Evaluate transfer profitability of football clubs.

Metrics
Total Spent
Total Income
Balance
Income-To-Spend Ratio (ITSR)
Methodology
Using UNION ALL, transfer purchases and sales were consolidated into a single cash-flow model.

Example Insight
Traditional player-development clubs such as Benfica, Ajax, Salzburg, and Sporting CP generated the highest positive transfer balances.

2. Total Overspending
Objective
Measure how much clubs pay above player market value.

Formula
Transfer Fee - Market Value
Metrics
Transfers Count
Total Overspending
Average Overspending Per Player
Share of Total Overspending
Example Insight
Chelsea, Manchester City, and Manchester United recorded the highest cumulative overspending figures.

3. Average Transfer Fee by Player Age
Objective
Identify the age range that maximizes transfer market value.

Metrics
Age At Transfer
Average Transfer Fee
Age Segments
Group	Age Range
U-21	15–21
PRIME	22–29
VETERAN	30+
Example Insight
Players aged approximately 22–26 commanded the highest average transfer fees, highlighting the market's preference for athletes in their prime years.

4. Transfer Fee by Position
Objective
Compare market valuation across playing positions.

Positions Analyzed
Forward
Midfielder
Defender
Goalkeeper
Example Insight
Forwards consistently achieved the highest average transfer fees, while goalkeepers recorded the lowest.

5. Club Mapping Dimension
Objective
Create a lookup dataset linking clubs with domestic leagues.

Usage
Used for:

XLOOKUP relationships
Dashboard filters
League-level analysis
Power Query transformations
6. Yearly Market Trends
Objective
Analyze macroeconomic trends in the football transfer market.

Metrics
Total Transfers
Total Spending
Average Transfer Fee
Total Overspending
Average Overspending Per Player
Example Insight
The transfer market experienced significant growth from 2015 onwards, followed by a temporary slowdown and subsequent recovery in later seasons.

📊 Dashboard Highlights
Market Dashboard
The market dashboard provides a high-level overview of transfer market activity.

KPIs
Total Market Spending
Average Transfer Fee
Total Market Overspending
Visualizations
Spending vs Overspending by Season
Spending by Player Age
Spending by Position
Club Dashboard
The club dashboard focuses on transfer performance and financial outcomes.

Features
League-Level Slicers
Top Overspending Clubs
Highest Transfer Balance Clubs
Lowest Transfer Balance Clubs
Key Insight
The analysis reveals two clearly different business models:

Player-Trading Clubs

SL Benfica
Ajax Amsterdam
RB Salzburg
Sporting CP
FC Porto
Aggressive Spending Clubs

Chelsea FC
Manchester City
Manchester United
Paris Saint-Germain
🔑 Key Findings
💰 Best Financially Performing Clubs
Several clubs consistently generate positive transfer balances through talent development and player sales.

📈 Peak Player Value
Players aged 22–26 represent the highest-valued segment of the transfer market.

⚽ Position Premium
Forwards command the highest transfer fees across the market.

💸 Market Inefficiencies
Certain clubs repeatedly pay substantial premiums over estimated market value.

🌍 Market Growth
Transfer spending increased dramatically between 2015 and 2026, reaching record levels in the most recent seasons.

🧰 Skills Demonstrated
SQL
Joins
UNION ALL
Aggregations
CASE WHEN
GROUP BY
HAVING
Data Cleaning
Analytical Queries
Excel
Advanced Formulas
XLOOKUP
Structured Tables
Dashboard Design
KPI Development
Power Query
Data Transformation
Data Merging
Lookup Modeling
Data Analysis
Business Analysis
KPI Design
Market Research
Financial Metrics
Storytelling with Data
📷 Dashboard Preview
Market Dashboard
Market Dashboard

Club Dashboard
Club Dashboard

📁 Repository Structure
Football-Transfer-Market-Financial-Analysis-2015-2026
│
├── README.md
│
├── SQL
│   ├── 01_ClubFinancialBalance.sql
│   ├── 02_TotalOverspending.sql
│   ├── 03_AvgFeeByPlayerAge.sql
│   ├── 04_TransferFeeByPosition.sql
│   ├── 05_DimClubsMapping.sql
│   └── 06_YearlyMarketTrends.sql
│
├── Excel
│   └── Football_Transfer_Market_Dashboard.xlsx
│
├── Images
│   ├── dashboard_market.png
│   └── dashboard_clubs.png
│
└── Documentation
    └── Data_Model.png
👤 Author
Łukasz Prus

Aspiring Data Analyst passionate about SQL, Excel, business analytics, and football data.

GitHub: Lpru260
