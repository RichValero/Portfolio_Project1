-- BASIC CODE TO SELECT TABLES (MALE AND FEMALE LIFE EXPECTANCY FROM 1960 TO 2020)

SELECT * FROM female_exp; -- TABLE WITH FEMALE DATA

SELECT * FROM male_exp; -- TABLE WITH MALE DATA

SELECT * FROM femaleexp_region; -- TABLE WITH FEMALE DATA BY REGION

SELECT * FROM maleexp_region; -- TABLE WITH MALE DATA BY REGION

SELECT * FROM femaleexp_conditions; -- TABLE WITH FEMALE LIFE EXP UNDER DIFFERENT LIVING CONDITIONS

SELECT * FROM maleexp_conditions; -- TABLE WITH MALE LIFE EXP UNDER DIFFERENT LIVING CONDITIONS

SELECT * FROM life_exp_pergender; -- VIEW WITH MALE AND FEMALE DATA FROM 

SELECT * FROM AVG_Life_Expectancy; -- VIEW WITH AVG LIFE EXPECTACY FOR BOTH GENDER

SELECT * FROM Life_Expectancy_Region; -- VIEW TABLE WITH LIFE EXPECTANCY PER REGION

-- ORGANIZING DATA PER YEAR FOR MALE AND FEMALE (JOINING BOTH TABLES)

SELECT female_exp.country, 
FORMAT(female_exp.year_1960,2) AS Female_1960, FORMAT(male_exp.Year_1960,2) AS Male_1960, 
ROUND(female_exp.year_1965) AS Female_1965, ROUND(male_exp.Year_1965) AS Male_1965,
ROUND(female_exp.year_1970) AS Female_1970, ROUND(male_exp.Year_1970) AS Male_1970,
ROUND(female_exp.year_1975) AS Female_1975, ROUND(male_exp.Year_1975) AS Male_1975,
ROUND(female_exp.year_1980) AS Female_1980, ROUND(male_exp.Year_1980) AS Male_1980,
ROUND(female_exp.year_1985) AS Female_1985, ROUND(male_exp.Year_1985) AS Male_1985,
ROUND(female_exp.year_1990) AS Female_1990, ROUND(male_exp.Year_1990) AS Male_1990,
ROUND(female_exp.year_1995) AS Female_1995, ROUND(male_exp.Year_1995) AS Male_1995,
ROUND(female_exp.year_2000) AS Female_2000, ROUND(male_exp.Year_2000) AS Male_2000,
ROUND(female_exp.year_2005) AS Female_2005, ROUND(male_exp.Year_2005) AS Male_2005,
ROUND(female_exp.year_2010) AS Female_2010, ROUND(male_exp.Year_2010) AS Male_2010,
ROUND(female_exp.year_2015) AS Female_2015, ROUND(male_exp.Year_2015) AS Male_2015,
ROUND(female_exp.year_2020) AS Female_2020, ROUND(male_exp.Year_2020) AS Male_2020
FROM female_exp
INNER JOIN male_exp ON female_exp.country_code = male_exp.country_code;


-- CREATING VIEW FOR LIFE EXPECTANCY PER GENDER 

DROP VIEW IF EXISTS life_exp_pergender;
CREATE VIEW life_exp_pergender AS
SELECT female_exp.country,
ROUND(female_exp.year_1960) AS Female_1960, ROUND(male_exp.Year_1960) AS Male_1960, 
ROUND(female_exp.year_1965) AS Female_1965, ROUND(male_exp.Year_1965) AS Male_1965,
ROUND(female_exp.year_1970) AS Female_1970, ROUND(male_exp.Year_1970) AS Male_1970,
ROUND(female_exp.year_1975) AS Female_1975, ROUND(male_exp.Year_1975) AS Male_1975,
ROUND(female_exp.year_1980) AS Female_1980, ROUND(male_exp.Year_1980) AS Male_1980,
ROUND(female_exp.year_1985) AS Female_1985, ROUND(male_exp.Year_1985) AS Male_1985,
ROUND(female_exp.year_1990) AS Female_1990, ROUND(male_exp.Year_1990) AS Male_1990,
ROUND(female_exp.year_1995) AS Female_1995, ROUND(male_exp.Year_1995) AS Male_1995,
ROUND(female_exp.year_2000) AS Female_2000, ROUND(male_exp.Year_2000) AS Male_2000,
ROUND(female_exp.year_2005) AS Female_2005, ROUND(male_exp.Year_2005) AS Male_2005,
ROUND(female_exp.year_2010) AS Female_2010, ROUND(male_exp.Year_2010) AS Male_2010,
ROUND(female_exp.year_2015) AS Female_2015, ROUND(male_exp.Year_2015) AS Male_2015,
ROUND(female_exp.year_2020) AS Female_2020, ROUND(male_exp.Year_2020) AS Male_2020
FROM female_exp
INNER JOIN male_exp ON female_exp.country_code = male_exp.country_code;

-- CODE TO SELECT LIFE EXPECTANCY TABLE (PER GENDER)

SELECT * FROM life_exp_pergender;


-- AVG LIFE EXPECTANCY FOR MALE AND FEMALE

SELECT female_exp.country,
ROUND(AVG(female_exp.year_1960)) AS AVG_F1960, ROUND(AVG(male_exp.Year_1960)) AS AVG_M1960,
ROUND(AVG(female_exp.year_1965)) AS AVG_F1965, ROUND(AVG(male_exp.Year_1965)) AS AVG_M1965,
ROUND(AVG(female_exp.year_1970)) AS AVG_F1970, ROUND(AVG(male_exp.Year_1970)) AS AVG_M1970,
ROUND(AVG(female_exp.year_1975)) AS AVG_F1975, ROUND(AVG(male_exp.Year_1975)) AS AVG_M1975,
ROUND(AVG(female_exp.year_1980)) AS AVG_F1980, ROUND(AVG(male_exp.Year_1980)) AS AVG_M1980,
ROUND(AVG(female_exp.year_1985)) AS AVG_F1985, ROUND(AVG(male_exp.Year_1985)) AS AVG_M1985,
ROUND(AVG(female_exp.year_1990)) AS AVG_F1990, ROUND(AVG(male_exp.Year_1990)) AS AVG_M1990,
ROUND(AVG(female_exp.year_1995)) AS AVG_F1995, ROUND(AVG(male_exp.Year_1995)) AS AVG_M1995,
ROUND(AVG(female_exp.year_2000)) AS AVG_F2000, ROUND(AVG(male_exp.Year_2000)) AS AVG_M2000,
ROUND(AVG(female_exp.year_2005)) AS AVG_F2005, ROUND(AVG(male_exp.Year_2005)) AS AVG_M2005,
ROUND(AVG(female_exp.year_2010)) AS AVG_F2010, ROUND(AVG(male_exp.Year_2010)) AS AVG_M2010,
ROUND(AVG(female_exp.year_2015)) AS AVG_F2015, ROUND(AVG(male_exp.Year_2015)) AS AVG_M2015,
ROUND(AVG(female_exp.year_2020)) AS AVG_F2020, ROUND(AVG(male_exp.Year_2020)) AS AVG_M2020
FROM female_exp
INNER JOIN male_exp ON female_exp.country = male_exp.country;


-- CREATING VIEW FOR AVG LIFE EXP.

DROP VIEW IF EXISTS AVG_Life_Expectancy;
CREATE VIEW AVG_Life_Expectancy AS
SELECT female_exp.country,
ROUND(AVG(female_exp.year_1960)) AS AVG_F1960, ROUND(AVG(male_exp.Year_1960)) AS AVG_M1960,
ROUND(AVG(female_exp.year_1965)) AS AVG_F1965, ROUND(AVG(male_exp.Year_1965)) AS AVG_M1965,
ROUND(AVG(female_exp.year_1970)) AS AVG_F1970, ROUND(AVG(male_exp.Year_1970)) AS AVG_M1970,
ROUND(AVG(female_exp.year_1975)) AS AVG_F1975, ROUND(AVG(male_exp.Year_1975)) AS AVG_M1975,
ROUND(AVG(female_exp.year_1980)) AS AVG_F1980, ROUND(AVG(male_exp.Year_1980)) AS AVG_M1980,
ROUND(AVG(female_exp.year_1985)) AS AVG_F1985, ROUND(AVG(male_exp.Year_1985)) AS AVG_M1985,
ROUND(AVG(female_exp.year_1990)) AS AVG_F1990, ROUND(AVG(male_exp.Year_1990)) AS AVG_M1990,
ROUND(AVG(female_exp.year_1995)) AS AVG_F1995, ROUND(AVG(male_exp.Year_1995)) AS AVG_M1995,
ROUND(AVG(female_exp.year_2000)) AS AVG_F2000, ROUND(AVG(male_exp.Year_2000)) AS AVG_M2000,
ROUND(AVG(female_exp.year_2005)) AS AVG_F2005, ROUND(AVG(male_exp.Year_2005)) AS AVG_M2005,
ROUND(AVG(female_exp.year_2010)) AS AVG_F2010, ROUND(AVG(male_exp.Year_2010)) AS AVG_M2010,
ROUND(AVG(female_exp.year_2015)) AS AVG_F2015, ROUND(AVG(male_exp.Year_2015)) AS AVG_M2015,
ROUND(AVG(female_exp.year_2020)) AS AVG_F2020, ROUND(AVG(male_exp.Year_2020)) AS AVG_M2020
FROM female_exp
INNER JOIN male_exp ON female_exp.country = male_exp.country;


SELECT * FROM AVG_Life_Expectancy;


-- TABLE WITH LIFE EXPECTANCY UNDER DIFFERENT CONDITIONS OF LIVING.

SELECT femaleexp_conditions.variable,
ROUND(femaleexp_conditions.Year_1960) AS Female_1960, ROUND(maleexp_conditions.year_1960) AS Male_1960,
ROUND(femaleexp_conditions.Year_1965) AS Female_1965, ROUND(maleexp_conditions.year_1965) AS Male_1965,
ROUND(femaleexp_conditions.Year_1970) AS Female_1970, ROUND(maleexp_conditions.year_1970) AS Male_1970,
ROUND(femaleexp_conditions.Year_1975) AS Female_1975, ROUND(maleexp_conditions.year_1975) AS Male_1975,
ROUND(femaleexp_conditions.Year_1980) AS Female_1980, ROUND(maleexp_conditions.year_1980) AS Male_1980,
ROUND(femaleexp_conditions.Year_1985) AS Female_1985, ROUND(maleexp_conditions.year_1985) AS Male_1985,
ROUND(femaleexp_conditions.Year_1990) AS Female_1990, ROUND(maleexp_conditions.year_1990) AS Male_1990,
ROUND(femaleexp_conditions.Year_1995) AS Female_1995, ROUND(maleexp_conditions.year_1995) AS Male_1995,
ROUND(femaleexp_conditions.Year_2000) AS Female_2000, ROUND(maleexp_conditions.year_2000) AS Male_2000,
ROUND(femaleexp_conditions.Year_2005) AS Female_2005, ROUND(maleexp_conditions.year_2005) AS Male_2005,
ROUND(femaleexp_conditions.Year_2010) AS Female_2010, ROUND(maleexp_conditions.year_2010) AS Male_2010,
ROUND(femaleexp_conditions.Year_2015) AS Female_2015, ROUND(maleexp_conditions.year_2015) AS Male_2015,
ROUND(femaleexp_conditions.Year_2020) AS Female_2020, ROUND(maleexp_conditions.year_2020) AS Male_2020
FROM femaleexp_conditions
INNER JOIN maleexp_conditions
ON femaleexp_conditions.variable_code = maleexp_conditions.variable_code;


-- CREATING VIEW 

DROP VIEW IF EXISTS Life_Expectancy_Conditions;
CREATE VIEW Life_Expectancy_Conditions AS
SELECT femaleexp_conditions.variable,
ROUND(femaleexp_conditions.Year_1960) AS Female_1960, ROUND(maleexp_conditions.year_1960) AS Male_1960,
ROUND(femaleexp_conditions.Year_1965) AS Female_1965, ROUND(maleexp_conditions.year_1965) AS Male_1965,
ROUND(femaleexp_conditions.Year_1970) AS Female_1970, ROUND(maleexp_conditions.year_1970) AS Male_1970,
ROUND(femaleexp_conditions.Year_1975) AS Female_1975, ROUND(maleexp_conditions.year_1975) AS Male_1975,
ROUND(femaleexp_conditions.Year_1980) AS Female_1980, ROUND(maleexp_conditions.year_1980) AS Male_1980,
ROUND(femaleexp_conditions.Year_1985) AS Female_1985, ROUND(maleexp_conditions.year_1985) AS Male_1985,
ROUND(femaleexp_conditions.Year_1990) AS Female_1990, ROUND(maleexp_conditions.year_1990) AS Male_1990,
ROUND(femaleexp_conditions.Year_1995) AS Female_1995, ROUND(maleexp_conditions.year_1995) AS Male_1995,
ROUND(femaleexp_conditions.Year_2000) AS Female_2000, ROUND(maleexp_conditions.year_2000) AS Male_2000,
ROUND(femaleexp_conditions.Year_2005) AS Female_2005, ROUND(maleexp_conditions.year_2005) AS Male_2005,
ROUND(femaleexp_conditions.Year_2010) AS Female_2010, ROUND(maleexp_conditions.year_2010) AS Male_2010,
ROUND(femaleexp_conditions.Year_2015) AS Female_2015, ROUND(maleexp_conditions.year_2015) AS Male_2015,
ROUND(femaleexp_conditions.Year_2020) AS Female_2020, ROUND(maleexp_conditions.year_2020) AS Male_2020
FROM femaleexp_conditions
INNER JOIN maleexp_conditions
ON femaleexp_conditions.variable_code = maleexp_conditions.variable_code;


SELECT * FROM Life_Expectancy_Conditions;



-- JOINING BOTH GENDER LIFE EXPECTANCY BY REGION INTO ONE TABLE

SELECT femaleexp_region.region,
ROUND(femaleexp_region.year_1960) AS Female_1960, ROUND(maleexp_region.Year_1960) AS Male_1960,
ROUND(femaleexp_region.year_1965) AS Female_1965, ROUND(maleexp_region.Year_1965) AS Male_1965,
ROUND(femaleexp_region.year_1970) AS Female_1970, ROUND(maleexp_region.Year_1970) AS Male_1970,
ROUND(femaleexp_region.year_1975) AS Female_1975, ROUND(maleexp_region.Year_1975) AS Male_1975,
ROUND(femaleexp_region.year_1980) AS Female_1980, ROUND(maleexp_region.Year_1980) AS Male_1980,
ROUND(femaleexp_region.year_1985) AS Female_1985, ROUND(maleexp_region.Year_1985) AS Male_1985,
ROUND(femaleexp_region.year_1990) AS Female_1990, ROUND(maleexp_region.Year_1990) AS Male_1990,
ROUND(femaleexp_region.year_1995) AS Female_1995, ROUND(maleexp_region.Year_1995) AS Male_1995,
ROUND(femaleexp_region.year_2000) AS Female_2000, ROUND(maleexp_region.Year_2000) AS Male_2000,
ROUND(femaleexp_region.year_2005) AS Female_2005, ROUND(maleexp_region.Year_2005) AS Male_2005,
ROUND(femaleexp_region.year_2010) AS Female_2010, ROUND(maleexp_region.Year_2010) AS Male_2010,
ROUND(femaleexp_region.year_2015) AS Female_2015, ROUND(maleexp_region.Year_2015) AS Male_2015,
ROUND(femaleexp_region.year_2020) AS Female_2020, ROUND(maleexp_region.Year_2020) AS Male_2020
FROM femaleexp_region
INNER JOIN maleexp_region ON femaleexp_region.region_code = maleexp_region.Region_Code;


-- CREATING VIEW TABLE FOR DATA BY REGION

DROP VIEW IF EXISTS Life_Expectancy_Region;
CREATE VIEW Life_Expectancy_Region AS
SELECT femaleexp_region.region,
ROUND(femaleexp_region.year_1960) AS Female_1960, ROUND(maleexp_region.Year_1960) AS Male_1960,
ROUND(femaleexp_region.year_1965) AS Female_1965, ROUND(maleexp_region.Year_1965) AS Male_1965,
ROUND(femaleexp_region.year_1970) AS Female_1970, ROUND(maleexp_region.Year_1970) AS Male_1970,
ROUND(femaleexp_region.year_1975) AS Female_1975, ROUND(maleexp_region.Year_1975) AS Male_1975,
ROUND(femaleexp_region.year_1980) AS Female_1980, ROUND(maleexp_region.Year_1980) AS Male_1980,
ROUND(femaleexp_region.year_1985) AS Female_1985, ROUND(maleexp_region.Year_1985) AS Male_1985,
ROUND(femaleexp_region.year_1990) AS Female_1990, ROUND(maleexp_region.Year_1990) AS Male_1990,
ROUND(femaleexp_region.year_1995) AS Female_1995, ROUND(maleexp_region.Year_1995) AS Male_1995,
ROUND(femaleexp_region.year_2000) AS Female_2000, ROUND(maleexp_region.Year_2000) AS Male_2000,
ROUND(femaleexp_region.year_2005) AS Female_2005, ROUND(maleexp_region.Year_2005) AS Male_2005,
ROUND(femaleexp_region.year_2010) AS Female_2010, ROUND(maleexp_region.Year_2010) AS Male_2010,
ROUND(femaleexp_region.year_2015) AS Female_2015, ROUND(maleexp_region.Year_2015) AS Male_2015,
ROUND(femaleexp_region.year_2020) AS Female_2020, ROUND(maleexp_region.Year_2020) AS Male_2020
FROM femaleexp_region
INNER JOIN maleexp_region ON femaleexp_region.region_code = maleexp_region.Region_Code;

SELECT * FROM Life_Expectancy_Region;