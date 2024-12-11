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
**Tasks:**
- Loaded data into SQL for cleaning.
- Checked for missing values and inconsistencies.
- Standardized date formats and calculated ride lengths.
- Documented the cleaning and transformation steps.

**SQL Files:**
[Data Combining]()
[Data Exploration]()
[Data Cleaning]()
[Data Analysis]()
1. [`Data_Merging.sql`]()
2. [`data_Exploration.sql`]()
3. [`Data_Cleaning.sql`]()
4. [`Data_Analysis.sql`]()

**Deliverable:**
- Documentation of data cleaning and manipulation steps.

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

