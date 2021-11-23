-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM cohorts JOIN students ON cohort_id = cohorts.id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

SELECT students.name as student_name, cohorts.name as cohort_name, students.start_date as student_start_date, cohorts.start_date as cohort_start_date
FROM students 
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;