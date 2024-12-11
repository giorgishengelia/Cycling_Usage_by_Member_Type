CREATE TABLE `graphite-wave-436721-v9.Trips.Yearly` AS (
  SELECT * FROM `graphite-wave-436721-v9.Trips.Jan` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.Feb` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.March` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.April` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.May` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.June` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.July` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.August` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.September` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.October` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.November` 
  UNION ALL
  SELECT * FROM `graphite-wave-436721-v9.Trips.December`
  );