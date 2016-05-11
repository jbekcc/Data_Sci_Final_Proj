SELECT from_user, from_user_name, COUNT(from_user) as count from tweet where job_id=4258 group by from_user order by count DESC LIMIT 10

Select month(created_at) as theMonth, week(created_at) as theWeek, day(created_at) as theDay, year(created_at) as theYear, count(*) as counter from tweet where job_id=4258 group by theYear, theMonth, theWeek, theDay;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN text LIKE '%#PrayForJapan%' THEN 1 ELSE 0 END) JapanCount,
    SUM(CASE WHEN text LIKE '%#PrayForMexico%' THEN 1 ELSE 0 END) MexicoCount,
    SUM(CASE WHEN text LIKE '%#PrayForLebanon%' THEN 1 ELSE 0 END) LebanonCount,
    SUM(CASE WHEN text LIKE '%#PrayForBeirut%' THEN 1 ELSE 0 END) BeirutCount,
SUM(CASE WHEN text LIKE '%#PrayForParis%' THEN 1 ELSE 0 END) ParisCount
FROM tweet where job_id=4258
GROUP BY theYear, theMonth, theDay;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear,
    COUNT(*) total,
    SUM(CASE WHEN text LIKE '%KKK%' THEN 1 ELSE 0 END) KKKCount,
    SUM(CASE WHEN LOWER(text) LIKE '%student%' THEN 1 ELSE 0 END) StudentCount,
    SUM(CASE WHEN LOWER(text) LIKE '%world%' THEN 1 ELSE 0 END) WorldCount,
    SUM(CASE WHEN LOWER(text) LIKE '%black%' THEN 1 ELSE 0 END) BlackCount,
SUM(CASE WHEN LOWER(text) LIKE '%white%' THEN 1 ELSE 0 END) WhiteCount
FROM tweet where job_id=4258
GROUP BY theYear, theMonth, theWeek, theDay;
