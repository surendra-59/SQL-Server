-- Except give you those rows which are there in first table not in second table 
-- upper table given priority

SELECT * FROM tblEmps
EXCEPT
SELECT * FROM tblEmps2



SELECT * FROM tblEmps2
EXCEPT
SELECT * FROM tblEmps





