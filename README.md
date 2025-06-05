# Cyclistic Bike-Share Data Analysis (Winter 2023)

## Business Goal
Convert casual riders into annual members by identifying behavioral differences and usage trends, enabling targeted marketing strategies.

## Tools Used
- Google BigQuery (SQL)
- Tableau Public
- GitHub for documentation

## Data Source
Cyclistic trip data for Jan–Mar 2023, provided by [Divvy/Motivate](https://divvy-tripdata.s3.amazonaws.com/index.html)

---

## Key KPIs & Insights

### 1. Total Number of Rides by User Type
- **KPI:** Count of rides by `member_casual`
- **Insight:** Casual riders form a significant share of total rides — they represent a large conversion opportunity.

### 2. Average Ride Duration
- **KPI:** Average duration in minutes using `TIMESTAMP_DIFF`
- **Insight:** Casual riders take longer trips on average, suggesting leisure-focused usage. Consider long-ride incentives or bundled offers.

### 3. Day-of-Week Usage Trends
- **KPI:** Ride counts by day of the week and user type
- **Insight:** Casuals ride more on weekends, while members are weekday commuters — tailor campaigns by user type and time of week.

### 4. Commute-Like Casual Riders (Advanced KPI)
- **KPI:** Count of casual riders who ride on weekdays during commute hours (6–10 AM, 4–7 PM) with short rides (5–30 mins)
- **Insight:** A new potential segment — casuals who already act like members. Offer weekday-only commuter plans or trial memberships to convert them.

### 5. Top Start Stations Used by Casual Riders
- **KPI:** Top 10 start stations by ride count for casual users
- **Insight:** Shows physical locations for targeted marketing. These are high-traffic casual rider areas — ideal for QR code offers, geo-targeted digital ads, or promo signs.

---

## Interactive Dashboard
View the full Tableau Public dashboard here: [Insert Link]

---

## Final Recommendations
1. **Create a “Smart Weekday Plan”** for commute-behavior casuals.
2. **Run weekend promos and bundles** to convert leisure riders.
3. **Target high-traffic casual stations** with ads, QR codes, and discounts.
4. **Offer discounts on electric bikes** if preferred more by casuals (can be explored as a next KPI).

---

## Author
This case study was completed as part of the Google Data Analytics Capstone. For more projects, visit my GitHub profile or Tableau Public gallery.
