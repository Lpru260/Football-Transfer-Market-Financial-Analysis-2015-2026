# ⚽ Football Transfer Market Financial Analysis (2015–2026)

## Overview

This project analyzes global football transfer activity between 2015 and 2026 using Transfermarkt data.

Source : https://www.kaggle.com/datasets/davidcariboo/player-scores

The objective was to explore transfer market dynamics, evaluate club financial performance, identify overspending behavior, and uncover player valuation patterns based on age and position.

**Tools Used:**
- SQL Server (T-SQL)
- Power Query
- Microsoft Excel
- Data Visualization & Dashboarding

---

# 📊 Dashboard Preview

## Market Dashboard

<img width="924" height="422" alt="image" src="https://github.com/user-attachments/assets/4233760b-2550-40cc-951b-c3d88c5a387a" />


### Highlights
- €77.2B Total Transfer Spending
- €4.89M Average Transfer Fee
- €6.5B Total Market Overspending

---

## Club Dashboard

<img width="924" height="419" alt="image" src="https://github.com/user-attachments/assets/258eceb3-0150-4c7e-b00b-6d0eaa51a339" />



### Highlights
- Benfica generated the highest transfer surplus.
- Chelsea recorded the highest transfer overspending.
- Premier League clubs dominate overspending rankings.
- Traditional player-trading clubs significantly outperform spending-focused clubs in transfer profitability.

---

# 🔍 Business Questions

### Club Financial Analysis
- Which clubs generate the highest transfer profits?
- Which clubs consistently spend more than they earn?

### Transfer Efficiency
- Which clubs pay the highest premiums above market value?
- Which clubs appear to negotiate transfers most efficiently?

### Player Valuation
- What is the most valuable player age range?
- Which playing positions command the highest transfer fees?

### Market Trends
- How has the transfer market evolved since 2015?
- How did extraordinary events impact market behavior?

---

# 📈 Key Findings

### 💰 Top Transfer Trading Clubs

| Club | Transfer Balance |
|--------|---------:|
| SL Benfica | €692.9M |
| Ajax Amsterdam | €526.9M |
| RB Salzburg | €439.6M |
| LOSC Lille | €394.0M |
| Sporting CP | €369.3M |

These clubs demonstrate highly effective player development and resale models.

---

### 💸 Highest Overspending Clubs

| Club | Total Overspending |
|--------|---------:|
| Chelsea FC | €800.6M |
| Manchester City | €447.9M |
| Newcastle United | €414.0M |
| Manchester United | €391.8M |
| Brighton | €277.6M |

These clubs paid the largest cumulative premiums relative to player market values.

---

### 👤 Peak Player Value

Players aged **22–26** generated the highest average transfer fees, confirming the market preference for players entering or currently in their prime years.

---

### ⚽ Position Premium

Average transfer fees by position:

| Position | Avg. Fee |
|----------|----------:|
| Forward | €5.61M |
| Midfielder | €5.08M |
| Defender | €4.17M |
| Goalkeeper | €3.09M |

Forwards command the highest prices across the transfer market.

---

# 🌍 Transfer Market Timeline

### 2015–2019 | Rapid Expansion 📈

- Strong growth in transfer spending.
- Increasing transfer activity across major leagues.
- Record-breaking transfer fees became common.

### 2020–2021 | COVID-19 Disruption 📉

- Reduced club revenues impacted transfer budgets.
- Overall market spending declined.
- Clubs became more conservative in recruitment.

### 2022–2026 | Recovery & Record Growth 🚀

- Transfer activity recovered strongly.
- Spending exceeded pre-pandemic levels.
- New market spending records were established.

---

# 🛠 SQL Analysis

| Script | Description |
|----------|-------------|
| 01_ClubFinancialBalance.sql | Club spending, revenue and transfer balance analysis |
| 02_TotalOverspending.sql | Overspending analysis based on transfer fees vs market values |
| 03_AvgFeeByPlayerAge.sql | Transfer fee analysis by player age |
| 04_TransferFeeByPosition.sql | Transfer fee analysis by playing position |
| 05_DimClubsMapping.sql | Club-to-league mapping dimension |
| 06_YearlyMarketTrends.sql | Long-term transfer market trend analysis |

---

# 📂 Repository Structure

```text
Football-Transfer-Market-Financial-Analysis-2015-2026
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
└── README.md
```

---

# 💡 Skills Demonstrated

### SQL
- Joins
- UNION ALL
- CASE WHEN
- Aggregations
- GROUP BY
- HAVING
- Data Cleaning

### Excel & Power Query
- Data Transformation
- Data Modeling
- KPI Design
- XLOOKUP
- Interactive Dashboards

### Analytics
- Business Analysis
- Financial Analysis
- Data Visualization
- Market Research
- Storytelling with Data

---

## Author

**Łukasz Prus**

GitHub: **Lpru260**

LinkedIn: https://www.linkedin.com/in/lukaszprus/
