/*
9x9 multiplication table in SQL
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
-- sqlite3 < mt9x9.sql

.mode tabs
CREATE TABLE t(j INT, i INT);
WITH RECURSIVE 
  for(j) AS (VALUES(1) UNION ALL SELECT j+1 FROM for WHERE j < 9)
INSERT INTO t SELECT j, 1 FROM for;
SELECT i||'x'||j||'='||SUBSTR(' '||(i*j),-2,2),
       (i+1)||'x'||j||'='||SUBSTR(' '||((i+1)*j),-2,2),
       (i+2)||'x'||j||'='||SUBSTR(' '||((i+2)*j),-2,2) FROM t;
SELECT '';
UPDATE t SET i = i + 3;
SELECT i||'x'||j||'='||SUBSTR(' '||(i*j),-2,2),
       (i+1)||'x'||j||'='||SUBSTR(' '||((i+1)*j),-2,2),
       (i+2)||'x'||j||'='||SUBSTR(' '||((i+2)*j),-2,2) FROM t;
SELECT '';
UPDATE t SET i = i + 3;
SELECT i||'x'||j||'='||SUBSTR(' '||(i*j),-2,2),
       (i+1)||'x'||j||'='||SUBSTR(' '||((i+1)*j),-2,2),
       (i+2)||'x'||j||'='||SUBSTR(' '||((i+2)*j),-2,2) FROM t;
SELECT '';
