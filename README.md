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
- **Insight:** Casual riders form a moderate share of total usage — while not dominant, they still represent a meaningful conversion opportunity.

### 2. Average Ride Duration
- **KPI:** Average duration in minutes using `TIMESTAMP_DIFF`
- **Insight:** Casual riders take longer trips on average, suggesting leisure-focused usage. Consider long-ride incentives or bundled offers.

### 3. Day-of-Week Usage Trends
- **KPI:** Ride counts by day of the week and user type
- **Insight:** Casuals ride more on weekends, while members are weekday commuters — tailor campaigns by user type and time of week.

### 4. Commute-Like Casual Riders 
- **KPI:** Count of casual riders who ride on weekdays during commute hours (6–10 AM, 4–7 PM) with short rides (5–30 mins)
- **Insight:** A new potential segment — casuals who already act like members. Offer weekday-only commuter plans or trial memberships to convert them.

### 5. Top Start Stations Used by Commute-Like Casual Riders
- **KPI:** Top 20 most frequent start stations among commute-behavior casuals
- **Insight:** These are ideal locations for geo-targeted promotions — e.g. QR code signs or in-station digital campaigns. A new potential segment (25.9% of casuals) — casuals who already act like members. Offer weekday-only commuter plans or trial memberships to convert them.

### 6. KPI Summary Card 
- **KPI:** Total rides (Jan–Mar), casual ride count, commute-like casual ride count, % commute-like, and average ride durations by rider type
- **Insight:** Provides a snapshot of key metrics. Helps anchor all visualizations with context and quantifies the member-conversion potential.

---

## Interactive Dashboard
View the full Tableau Public dashboard here: (https://public.tableau.com/views/CyclisticProjectdraft/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## Final Recommendations
1. **Create a “Smart Weekday Plan”** for commute-behavior casuals.
2. **Run weekend promos and bundles** to convert leisure riders.
3. **Target high-traffic casual stations** with ads, QR codes, and discounts.
4. **Offer discounts on electric bikes** if preferred more by casuals (can be explored as a next KPI).

---

## Author
This case study was completed as part of the Google Data Analytics Capstone. For more projects, visit my GitHub profile or Tableau Public gallery.
