# Cyclistic Bike-Share Analysis: README

Welcome to the Cyclistic bike-share analysis project! This document serves as a comprehensive guide to understanding the project structure, objectives, and outcomes. Below, you will find step-by-step instructions and details about each phase of the analysis.

---

## **Introduction**

This case study explores how annual members and casual riders use Cyclistic bikes differently to design marketing strategies aimed at converting casual riders into annual members.

Key business task:

- Understand user behavior by analyzing historical bike usage data.
- Identify trends and patterns to support the creation of a targeted marketing campaign.

---

## **Project Structure**

- **SQL Scripts:** Used for data cleaning, transformation, and analysis.
- **Visualization:** [Tableau](https://public.tableau.com/app/profile/george.shengelia/viz/CyclingUsageDashboardbyMemberType/CyclingDashboard).
- **Findings:** A detailed report summarizing key insights and recommendations.

---

## **Data Analysis Process**

### 1. **Ask**
**Guiding Questions:**
- How do annual members and casual riders use Cyclistic bikes differently?
- How can the information be used to help design the marketing strategy to convert casual riders into annual members?

**Deliverable:** A clear statement of the business task:
- Analyze ride data to understand behavioral differences and provide actionable insights to the marketing team.

---

### 2. **Prepare**
**Tasks:**
- Downloaded 12 months of Cyclistic trip data.
- Stored data in an organized file structure.
- Verified data credibility and ensured compliance with privacy regulations.

**Deliverable:**
- Data source: Publicly available Cyclistic [trip data](https://divvy-tripdata.s3.amazonaws.com/index.html) provided under a [<ins>license</ins>](https://www.divvybikes.com/data-license-agreement) by Motivate International Inc.

---

### 3. **Process**

**SQL Files:**
1. [`Data_Combining.sql`](https://github.com/giorgishengelia/cyclistic-bike-share-analysis/blob/main/Combining_data.sql)
2. [`Data_Exploration.sql`](https://github.com/giorgishengelia/cyclistic-bike-share-analysis/blob/main/Data_Exploration.sql)
3. [`Data_Cleaning.sql`](https://github.com/giorgishengelia/cyclistic-bike-share-analysis/blob/main/Cleaning_Data.sql)
4. [`Data_Analysis.sql`](https://github.com/giorgishengelia/cyclistic-bike-share-analysis/blob/main/Data_Analysis.sql)

**Data Combining** 

12 datasets for each month from Jan 2022 till Dec 2022 were combined into one table with 5,667,717 rows. 

**Data Exploration** 

Ran queries for each column for any missing values, inconsistencies or errors with the dataset. 
The data set consists of **13 variables**, as shown in the following: <br>

| **No.**|  **Variable**       |  **Description**                                        |
|--------|------------------   | --------------------------------------------------------|
| 1      | ride_id             | Unique ID assigned to each ride                         |
| 2      | rideable_type       | classic, docked, or electric                            |
| 3      | started_at          | Date and time at the start of trip                      |
| 4      | ended_at            | Date and time at the end of trip                        |
| 5      | start_station_name  | Name of the station where the ride journey started from |
| 6      | start_station_id    | ID of the station where the ride journey started from   |
| 7      | end_station_name    | Name of the station where the ride trip ended at        |
| 8      | end_station_id      | ID of the station where the ride trip ended at          |
| 9      | start_lat           | Latitude of starting station                            |
| 10     | start_lng           | Longitude of starting station                           |
| 11     | end_lat             | Latitude of ending station                              |
| 12     | end_lng             | Longitude of ending station                             |                            
| 13     | member_casual       | Type of membership of each rider                        |

**Data Cleaning**
The dataset was cleaned by:
- Removing the trips with **null values**.
- Adding 3 columns: '**ride_length_in_mins**', '**day_of_week**' and '**month**'.
- Exclusing the **rides with duration less than a minute** or **longer than a day**.

In total, 4,224,062 rows were returned, which means 1,443,655 rows were removed.
---

### 4. **Analyze**
**Tasks:**
- Used SQL to calculate descriptive statistics and trends:
  - Average ride lengths for members vs. casual riders.
  - Ride counts by day of the week and hour of the day.
  - Popular start and end stations.
- Created pivot tables and summary tables for visualization.

**Key Insights:**
- Casual riders predominantly use bikes during weekends for leisure.
- Members tend to use bikes consistently throughout the week, often for commuting.

**Deliverable:**
- Summary of analysis, trends, and relationships in the data.

---

### 5. **Share**
**Tasks:**
- Visualized data trends using tools like Tableau and Excel.
- Created charts such as:
  - Heatmaps (Day of Week vs. Hour of Day with Ride Counts).
  - Bar charts (Ride Counts by User Type).
  - Line graphs (Ride Duration Trends by Month).

**Visualization Images:**
- Heatmap showcasing peak hours for casual riders and members.
- Bar chart comparing ride frequencies between user types.

**Deliverable:**
- Supporting visualizations to communicate findings effectively.

---

### 6. **Act**
**Tasks:**
- Formulated actionable recommendations:
  1. Launch weekend promotion campaigns targeting casual riders.
  2. Develop a loyalty program emphasizing benefits for regular commuters.
  3. Use targeted digital ads highlighting convenience and cost-saving aspects of membership.

**Deliverable:**
- Final recommendations for the marketing strategy.

---

## **How to Use This Repository**

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/username/cyclistic-bike-share-analysis.git
   ```

2. **Review SQL Scripts:**
   - Navigate to the `SQL/` folder and review the data cleaning and analysis scripts.

3. **Explore Visualizations:**
   - Check the `Visualizations/` folder for data insights in the form of images and Tableau dashboards.

4. **Read the Final Report:**
   - Refer to `final_report.pdf` for a detailed summary of the findings and recommendations.

---

## **Technologies Used**

- **SQL:** For data cleaning and analysis.
- **Tableau:** For creating visualizations.
- **Excel:** For additional data manipulation.
- **Python (Optional):** Used for advanced analysis (if applicable).

---

## **Acknowledgments**

Special thanks to the Cyclistic marketing analytics team for providing data and guidance.

---

## **Contact**

For questions or feedback, please reach out via GitHub Issues or email at [your_email@example.com].

---

Thank you for exploring this project. We hope these insights help Cyclistic achieve speedy success!

