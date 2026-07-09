-- Cek table (overview)
SELECT
	*
FROM ds_salaries ds;

-- Cek jumlah data
SELECT
	COUNT(*)
FROM ds_salaries ds;

-- Update nama kolom
ALTER TABLE ds_salaries 
RENAME COLUMN Column1 TO id;

-- 1. Profesi data apa yang paling dicari oleh perusahaan?
WITH top_jobs AS (
    SELECT
        job_title,
        COUNT(*) AS total_jobs
    FROM ds_salaries
    GROUP BY job_title
    ORDER BY total_jobs DESC
    LIMIT 5
)
SELECT
    ds.work_year,
	ds.job_title,
    COUNT(*) AS total_job
FROM ds_salaries ds
INNER JOIN top_jobs tj
    ON ds.job_title = tj.job_title
GROUP BY
    ds.work_year,
    ds.job_title
ORDER BY
    ds.work_year,
    total_job DESC;

-- 2. Berapa gaji rata-rata data analyst
SELECT
	work_year,
	job_title,
	ROUND(AVG(salary_in_usd)) AS avg_salary,
	COUNT(*) AS total_employee
FROM ds_salaries ds
WHERE job_title = 'Data Analyst'
GROUP BY 1, 2
ORDER BY work_year;

-- 3. Apakah remote job membayar gaji lebih tinggi
SELECT
	job_title,
	ROUND(AVG(salary_in_usd)) AS avg_salary,
	CASE
		WHEN remote_ratio = 0 THEN 'On-Site (0%)'
		WHEN remote_ratio = 50 THEN 'Hybrid (50%)'
		WHEN remote_ratio = 100 THEN 'Full Remote (100%)'
	END AS work_mode,
	COUNT(*) AS total_employee
FROM ds_salaries ds 
WHERE job_title = 'Data Analyst'
GROUP BY job_title, remote_ratio
ORDER BY remote_ratio ASC;

-- 4. Negara mana yang menawarkan kompensasi terbesar
SELECT
    company_location,
    ROUND(AVG(salary_in_usd)) AS avg_salary,
    COUNT(*) AS total_data_points
FROM ds_salaries
GROUP BY company_location
HAVING COUNT(*) >= 10
ORDER BY avg_salary DESC;

-- 5. Bagaimana pengaruh pengalaman terhadap gaji
SELECT
	CASE 
        WHEN experience_level = 'EN' THEN '1. Entry-level / Junior'
        WHEN experience_level = 'MI' THEN '2. Mid-level / Intermediate'
        WHEN experience_level = 'SE' THEN '3. Senior-level / Expert'
        WHEN experience_level = 'EX' THEN '4. Executive-level / Director'
    END AS experience_level,
	ROUND(AVG(salary_in_usd)) AS avg_salary
FROM ds_salaries ds 
WHERE job_title = 'Data Analyst'
GROUP BY 1
ORDER BY experience_level;

-- 6. Bagaimana pengaruh ukuran perusahaan terhadap gaji?
SELECT
    CASE 
        WHEN company_size = 'S' THEN '1. Small (< 50 Employee)'
        WHEN company_size = 'M' THEN '2. Medium (50 - 250 Employee)'
        WHEN company_size = 'L' THEN '3. Large (> 250 Employee)'
    END AS company_scale,
    ROUND(AVG(salary_in_usd)) AS avg_salary,
    ROUND(AVG(remote_ratio), 1) AS avg_remote_percentage,
    COUNT(*) AS total_employee
FROM ds_salaries
WHERE job_title = 'Data Analyst'
GROUP BY 1
ORDER BY company_scale;
