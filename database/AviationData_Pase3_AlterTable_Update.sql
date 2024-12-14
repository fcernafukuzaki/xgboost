
-- Oracle
SELECT Location,
       SUBSTR(Location, -2) AS Last_Two_Chars,
       SUBSTR(Location, 1, INSTR(Location, ',') - 1) AS City
FROM AviationData;

ALTER TABLE AviationData
ADD Abbreviation_State VARCHAR2(2);

UPDATE AviationData
SET Abbreviation_State = SUBSTR(Location, -2),
	Location = SUBSTR(Location, 1, INSTR(Location, ',') - 1);

SELECT * FROM aviationdata;

COMMIT;
