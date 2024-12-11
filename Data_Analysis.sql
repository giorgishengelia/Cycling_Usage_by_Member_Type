-- Rides based on bike type
SELECT
    member_casual,
    rideable_type,
    COUNT(ride_id) AS total_rides
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;
-- Classic bike has the most rides by Members(1,651,328), while lowest rides are with Casual riders using docked bike(172,397)

-- Rides per year
SELECT
    member_casual,
    COUNT(*) AS total_rides_per_year
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual
ORDER BY member_casual;

-- Rides per month
SELECT
    member_casual,
    COUNT(ride_id) as monthly_rides,
    month
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual, month
ORDER BY member_casual;

-- Rides per day of the week
SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS total_rides_per_week
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual,day_of_week
ORDER BY member_casual;

-- Number of rides by time of day and day of the week
SELECT
    day_of_week,
    EXTRACT(HOUR FROM started_at) AS hour_of_day,      -- 0 to 23 (hours of the day)
    COUNT(*) AS ride_count                             -- Total number of rides
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY day_of_week, hour_of_day
ORDER BY day_of_week, hour_of_day;

-- Number of Trips per hour
SELECT member_casual,
EXTRACT(HOUR FROM started_at) AS hour_of_day,
COUNT(*) AS total_trips
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual,hour_of_day
ORDER BY member_casual;

-- Avg ride length per day of the week
SELECT
    member_casual,
    day_of_week,
    AVG(ride_length_in_mins) AS daily_average_ride_length
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual, day_of_week
ORDER BY member_casual

-- Avg ride length per month
SELECT
    member_casual, month,
    AVG(ride_length_in_mins) AS monthly_average_ride_length
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual, month
ORDER BY member_casual

-- Avg ride length per Year
SELECT
    member_casual,
    AVG(ride_length_in_mins) AS yearly_average_ride_length
FROM `graphite-wave-436721-v9.Trips.Yearly_Cleaned`
GROUP BY member_casual
ORDER BY member_casual
