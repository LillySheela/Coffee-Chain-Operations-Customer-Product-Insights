# Coffee-Chain-Operations-Customer-Product-Insights

## Project Overview

This project analyzes customer behavior, product sales, and pastry inventory for a coffee chain with 3 functional outlets. Using **Power BI, Power Query, and SQL**, the analysis uncovers customer segments, identifies product trends, evaluates churn patterns, and recommends operational and marketing strategies to optimize inventory, reduce wastage, and improve sales performance.

**Key Objectives:**  
- Reduce daily pastry wastage.  
- Identify top-selling and low-performing products.  
- Profile potential customer groups for targeted marketing.  
- Build interactive dashboards for sales and inventory monitoring.

---

## Tools & Skills Used

- **Power BI**: Dashboard creation, visual analytics  
- **Power Query**: Data cleaning, transformation, and preparation  
- **SQL**: Data aggregation, pivoting, and exploratory queries  
- **Key Skills**: Data Cleaning, Data Analysis, Pivoting, Dashboard Design, Customer Segmentation, Product Insights

---

## Project Structure
- `data/` → raw datasets (customers, orders, products)  
- `queries/` → SQL queries
- `powerbi/` → PBIX files and Power Query Steps
- `insights/` → insights & recommendations report (PDF)  
- `README.md` → project overview  

---

## Key Insights

**Pastry Inventory Analysis**  
- Average wastage per pastry product is over 50% daily due to uniform production regardless of previous sales.  
- Recommendation: Use past 7 days’ sales to optimize daily production, projected to reduce wastage to <15%.  

**Product Sales Analysis**  
- **Top-selling product category**: Coffee  
- **Lowest-selling product category**: Packaged Chocolate  
- **Top 3 products**: Dark Chocolate Lg, Latte Rg, Sustainable Organic Coffee Lg  
- **Bottom 3 products**: Dark Chocolate, Earl Grey, Peppermint  

**Customer Profiling Insights**  
- **Potential customer segments**: Baby Boomers and Gen X favor Coffee and Tea.  
- Recommended to focus on **Gen Z and Younger Millennials** to increase engagement and purchase frequency.  
- Offers and promotions should be tailored to improve repeat purchases among targeted demographics.

---

## Dashboards

- **Pastry Inventory Management Dashboard**: Track daily sales and forecast required production to minimize wastage  
- **Sales Report Dashboard**: Visualize product sales performance across outlets, highlighting top and bottom performers  
- **Customer Insights Dashboard**: Identify and segment potential customer groups for targeted marketing campaigns

---

## How to Use This Repository

1. Clone the repository:  
```bash
git clone https://github.com/yourusername/Customer-Churn-Pastry-Analysis.git
```
2. Explore raw datasets in the data/raw folder
3. Upload the data files in MySQL workbench
4. Run SQL scripts from sql folder
5. Open Power BI PBIX files in powerbi/dashboards to view dashboards
