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
### **Technologies Used**
- Google BigQuery
- SQL
- Tableau
- Excel
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
Preview of the variables:

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
- Excluding the rides with duration less than a minute or longer than a day.

In Total, 4,224,062 rows were returned, which means 1,443,655 rows were removed.
Preview with the data type of each variable: <img width="352" alt="DataPreview" src="https://github.com/giorgishengelia/Assets/blob/main/Data_prev.jpg">

---

### 4. **Analyze**
**Tasks:**
- Used SQL to calculate descriptive statistics and trends:
  - Total Rides.
  - Average ride lengths for members vs. casual riders.
  - Ride counts by day of the week and hour of the day.
  
- Created tables and summary tables for visualization to help answer the Guiding Questions.

**Rides by Membership Type**

![Membership Types](https://github.com/giorgishengelia/Assets/blob/main/Total_rides_by_member.jpg)
- **Cyclistic members** accounted for about **59.4%** of total rides whereas casual riders made up **40.6%** of total rides in 2022. <br>

**Types of Bikes**

The types of bicycles used for the trips are displayed as follow:

![Types of Bikes](https://github.com/giorgishengelia/Assets/blob/main/Bike_type.jpg)

- Cyclistic members and casual riders prefer show a higher preference for **classic bicycles over electric bicycles**.
<br>

**Average Ride Duration**

The average ride length is plotted against the type of users (member vs. casual):

![Avg Ride Length (Year)](https://github.com/giorgishengelia/Assets/blob/main/Avg_ride_length.jpg)
- The ride duration of Cyclistic members are approximately two times smalelr than casual riders.
<br>

**Monthly Trips Taken**

The preference of cycling activity can be determined by drawing the graph of trips taken against month from January to December 2022. 

![Total Rides (Month)](https://github.com/giorgishengelia/Assets/blob/main/Monthly_Trips.jpg)
- Both Cyclistic members and casual riders have similar low activity, 65,051 rides and 12,355 rides respectively in **January 2022**.
- **Cyclistic members** have the **highest activity** (323,073 rides) in **August 2022**.
- **Casual riders** have the **greatest activity** (303,273 rides) in **July 2022**.
<br>

**Monthly Average Ride length**

The mean trip duration is depicted in the line graph below. 

![Avg  Ride Length (Month)](https://github.com/giorgishengelia/Assets/blob/main/Monthly_Average.jpg)
- The monthly average ride duration for **Cyclistic members** is the **highest** in **June** (13.65 minutes).
- For **casual riders**, the **highest** mean trip duration is in **May** (27.75 minutes).
<br>

**Weekly Average Ride Length**

The mean ride duration across the week is displayed as follow.

![Avg  Ride Length (Week)](https://github.com/giorgishengelia/Assets/blob/main/Weekly_Average.jpg)
- **Cyclistic members** cycled the **longest on Saturday** with an average ride length of 14.01 minutes.
- On the other hand, **casual riders cycled the longest on Sunday** with a mean trip duration of 27.18 minutes. 

**Rides by Time of The Day**

Sum of Ride counts taken during each hour of the day.

![Daily_rides_by_hour](https://github.com/giorgishengelia/Assets/blob/main/Rides_by_time_of_the_day.jpg)
- Most amount of rides by both Casual riders and Members were taken during the day at 4pm - 6pm on Weekdays and 12pm - 4pm on the Weekends.
- Least amount of rides were taken at night between 12am - 4am
- Most rides were taken on Wednesdays at 5pm with 72,605 rides total
- Least rides were taken on Wednesdays at 3am with 700 rides total. 

---

### 5. **Share**

![Cycling_Use Dashboard](https://github.com/giorgishengelia/Assets/blob/main/Cyclistic%20Dashboard.jpg)
View [Cycling Use Dashboard](https://public.tableau.com/app/profile/george.shengelia/viz/CyclingUsageDashboardbyMemberType/CyclingDashboard).

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

**Similarities:**
- Both Cyclistic members and casual riders **prefer riding bicycles in the spring and summer seasons** (from May to September). However, the number of rides decrease since September. This may be due to change of season in which the weather temperature drops and becomes uncomfortable for rides. 
- Both Cyclistic members and casual riders **prefer classic bicycles over electric bicycles**. 
- Both Cyclistic members and casual riders have **higher average ride duration on weekends as compared to on weekdays**.

**Differences:**
- **Cyclistic members** go on **more rides** than casual riders.
- **Cyclistic members** have **smaller average ride length** (12.41 minutes) than casual riders (23.82 minutes). Hence, this may suggest that the Cyclistic members take the bicycles for **short trips or short distance travel**. 
- **Cyclistic members** show **consistent rides** throughout the week while casual riders have the busiest activites on weekends and lowest activities during weekdays. This may indicate that the Cyclistic members use the bicycles for ***purpose-oriented rides** such as work or errands while the casual riders use bicycles for leisure or recreational activities.  

---

### 6. **Act**

**Aactionable Recommendations**:
 From the analysis above, we can design marketing strategies to convert casual riders to Cyclistic members.

- **Flexible Membership Options** <br>
Introduce a variety of membership plans, such as annual, monthly, and daily options, priced at $365/year, $45/month, and $3/day. This will allow riders to select a plan that suits their individual needs, with shorter-term memberships offering a convenient option for those who may not require a full-year commitment.

- **Digital Engagement Strategies** <br>
Leverage the rides by time of the day heatmap to plan to connect with casual riders and potential members at the right time. Create engaging visual content that captures the joy of cycling throughout different seasons and activities to inspire others to join.

- **Discounted Group Plans** <br>
Provide discounted membership packages for groups, including friends, families, and students. This initiative can motivate people to sign up together, fostering social connections and promoting group cycling activities.

- **Membership Loyalty Points System** <br>
Implement a membership loyalty points system for users to collect points for each ride. Rewards such as membership discount will be given based on the number of points collected. This will encourage riders to use the service more frequently, driving engagement and loyalty. 

- **Loyalty Rewards Program** <br>
Create a loyalty program where members earn points for each ride. Accumulated points can be redeemed for rewards like membership discounts. This system encourages frequent use, enhancing member retention and engagement.

- **Seasonal Promotions** <br>
Run limited-time seasonal campaigns featuring discounts, midweek offers, or extended ride durations for members. These promotions can help balance demand across seasons and make the service more appealing.

---
## Conclusion 

To summarize, this analysis sheds light on the distinct preferences and behaviors of members and casual riders. By crafting strategies that align with these differences, we can successfully encourage casual riders to transition into becoming loyal members.

