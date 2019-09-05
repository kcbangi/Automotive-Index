
\i
scripts/car_models.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

-- CREATE INDEX car_idx 
-- ON car_models (make_code);

\timing

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--Time: 23.154 ms 
--Time: 3.943 ms w/ index

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--Time: 18.497 ms
--Time: 3.436 ms w/ index

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--Time: 32.388 ms
--Time: 4.883 ms w/ index

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--Time: 187.887 ms
--Time: 187.042 ms w/ index

SELECT *
FROM car_models
WHERE year = 2010;
--Time: 52.979 ms
--Time: 51.449 ms w/ index