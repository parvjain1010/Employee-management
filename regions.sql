UPDATE Region SET Name=? AND LocatedIn=? WHERE Region_ID=?
UPDATE Region SET LocatedIn=? WHERE Region_ID=?
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE LocatedIn is NULL
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE LocatedIn is NULL AND Region_ID!=?
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE LocatedIn =?
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE LocatedIn =? AND Region_ID!=?
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE Region_ID=? 
SELECT Name,Region_ID, CASE WHEN LocatedIn IS NULL THEN 0 ELSE LocatedIn END AS LocatedIn FROM Region WHERE Name=?
SELECT * FROM Region WHERE Name=? AND LocatedIn=?
SELECT COUNT(*) FROM Region WHERE Region_ID=?
SELECT COUNT(*) FROM Region WHERE Name=?
SELECT COUNT(*) FROM Region WHERE Name=? AND LocatedIn=?