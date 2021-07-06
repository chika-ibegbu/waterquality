---WATER QUALITY DATA
SELECT * 
FROM covid.water_potability;

--NEUTRAL WATER
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE ph = '7';

--ACIDIC WATER
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE ph <'7';

--BASIC WATER
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE ph >'7';

QUALITY TURBIDY OF WATER
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE Turbidity BETWEEN 1 AND 5;

MODERATELY HARD WATER(PPM)
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE Hardness BETWEEN 60 AND 120;

--RECOMMENDED CONDUCTIVITY RANGE FOR DRINKING WATER(PPM)
SELECT ph,Hardness,Conductivity,Turbidity
FROM covid.water_potability
WHERE conductivity BETWEEN 30 AND 400;

--TDS OF DATA
SELECT ph,Hardness,Conductivity,Turbidity,(Hardness/Turbidity) AS TDS
FROM covid.water_potability;


SUM OF ALL THE CHLORAMINES
SELECT sum(Chloramines)
FROM covid.water_potability
GROUP BY Chloramines;

SELECT sum(Chloramines)
FROM covid.water_potability
ORDER BY Chloramines DESC;

---END OF EXTRACTION OF QUALITY PARAMETERS FROM WATER