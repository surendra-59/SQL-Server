

CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50)
);

INSERT INTO Customers1 VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eva');

INSERT INTO Orders1 VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 6, 'Monitor'),
(105, 7, 'Printer'),
(106, 8, 'SoundBox');


-- Inner Join
SELECT * FROM Customers1 C
INNER JOIN Orders1 O
ON C.CustomerID = O.CustomerID;

-- LEFT JOIN (LEFT OUTER JOIN)
SELECT * FROM Customers1 C
LEFT JOIN Orders1 O ON 
C.CustomerID = O.CustomerID;


-- RIGHT JOIN (RIGHT OUTER JOIN)
SELECT * FROM Customers1 C
RIGHT JOIN Orders1 O
ON C.CustomerID = O.CustomerID;

-- FULL OUTER JOIN
SELECT * FROM Customers1 C
FULL OUTER JOIN Orders1 O
ON C.CustomerID = O.CustomerID;

-- CROSS JOIN
    -- Returns every combination of rows from both tables (Cartesian product).
SELECT * FROM Customers1 CROSS JOIN Orders1

-- SELF JOIN
    -- A table joined with itself.
SELECT
    E.Name AS Employee,
    M.Name AS Manager
FROM Employees E
LEFT JOIN Employees M
ON E.ManagerID = M.EmpID;


-- NATURAL JOIN
    -- Supported in some databases (e.g., MySQL, Oracle, PostgreSQL), not SQL Server.
    -- It automatically joins columns with the same name.
    -- Generally avoided because it can produce unexpected results if schemas change.
SELECT *
FROM A
NATURAL JOIN B;




CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT
);

CREATE TABLE SalaryGrade (
    Grade CHAR(1),
    MinSalary INT,
    MaxSalary INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 25000),
(2, 'Bob', 42000),
(3, 'Charlie', 58000),
(4, 'David', 75000),
(5, 'Eva', 90000);

INSERT INTO Employees VALUES
(6, 'Mikal', 15000)

INSERT INTO SalaryGrade VALUES
('A', 20000, 39999),
('B', 40000, 59999),
('C', 60000, 79999),
('D', 80000, 100000);




-- NON-EQUI JOIN (Theta Join)
SELECT *
FROM Employees E
JOIN SalaryGrade S
ON E.Salary BETWEEN S.MinSalary AND S.MaxSalary;


-- JOIN COST RANKING.
| Rank | Join          | Cost           | Reason                                                           |
| ---- | ------------- | -------------- | ---------------------------------------------------------------- |
|  1 | INNER JOIN      | Lowest         | Returns only matching rows.                                      |
|  2 | LEFT JOIN       | Low            | Keeps all left rows; unmatched right rows become `NULL`.         |
|  3 | RIGHT JOIN      | Low–Medium     | Similar to LEFT JOIN; often rewritten internally as a LEFT JOIN. |
|  4 | NON-EQUI JOIN   | Medium–High    | Range conditions (`BETWEEN`, `<`, `>`) make optimization harder. |
|  5 | FULL OUTER JOIN | High           | Must preserve all rows from both tables.                         |
|  6 | SELF JOIN       | High (depends) | Reads the same table twice; expensive on large tables.           |
|  7 | CROSS JOIN      | Very High      | Produces every combination of rows (Cartesian product).          |


For Data Engineering interviews, there are two things to know:

1. **Which joins are more expensive?**
2. **Why are they expensive in distributed systems like Spark, Databricks, Synapse, Fabric, Snowflake, and BigQuery?**

---

# Join Cost Ranking (Cheapest → Most Expensive)

| Rank | Join            | Cost           | Reason                                                           |
| ---- | --------------- | -------------- | ---------------------------------------------------------------- |
| 🟢 1 | INNER JOIN      | Lowest         | Returns only matching rows.                                      |
| 🟢 2 | LEFT JOIN       | Low            | Keeps all left rows; unmatched right rows become `NULL`.         |
| 🟡 3 | RIGHT JOIN      | Low–Medium     | Similar to LEFT JOIN; often rewritten internally as a LEFT JOIN. |
| 🟡 4 | NON-EQUI JOIN   | Medium–High    | Range conditions (`BETWEEN`, `<`, `>`) make optimization harder. |
| 🟠 5 | FULL OUTER JOIN | High           | Must preserve all rows from both tables.                         |
| 🔴 6 | SELF JOIN       | High (depends) | Reads the same table twice; expensive on large tables.           |
| 🔴 7 | CROSS JOIN      | Very High      | Produces every combination of rows (Cartesian product).          |

/*

# Why does this matter in the cloud?

In Spark/Fabric/Snowflake/BigQuery:

* More data shuffled across the cluster.
* More memory required.
* Longer execution time.
* More compute credits/warehouse usage.
* Higher cloud costs.

A poor join strategy can make a query take **minutes instead of seconds**.

---

# Frequently Asked Data Engineering Interview Questions

## 1. Difference between INNER and LEFT JOIN ⭐⭐⭐⭐⭐

**Answer:** INNER JOIN returns only matching rows. LEFT JOIN returns all rows from the left table and matching rows from the right.

---

## 2. Why is CROSS JOIN dangerous? ⭐⭐⭐⭐⭐

**Answer:** It creates a Cartesian product. If table A has `m` rows and table B has `n` rows, the result has `m × n` rows, which can explode in size and cost.

---

## 3. Which join is fastest? ⭐⭐⭐⭐

**Answer:** Generally **INNER JOIN**, assuming proper indexing or partitioning and similar data distribution.

---

## 4. Which join is most expensive? ⭐⭐⭐⭐⭐

**Answer:** Usually **CROSS JOIN** because of the Cartesian product. FULL OUTER JOIN and large NON-EQUI JOINs can also be expensive.

---

## 5. Why is a NON-EQUI JOIN slower? ⭐⭐⭐⭐

**Answer:** The engine cannot rely on simple equality matching. Range comparisons often require more scanning and are harder to optimize.

---

## 6. What is a SELF JOIN? ⭐⭐⭐

**Answer:** Joining a table to itself, commonly used for hierarchies like employees and managers.

---

## 7. What is a Cartesian product? ⭐⭐⭐⭐⭐

**Answer:** Every row from one table is paired with every row from another. This is exactly what a `CROSS JOIN` produces.

---

## 8. What happens if you forget the `ON` clause? ⭐⭐⭐⭐⭐

Depending on the SQL dialect, you'll either get an error or effectively create a Cartesian product, resulting in a huge number of rows.

---

## 9. Which join preserves unmatched rows? ⭐⭐⭐⭐

* LEFT JOIN → left table
* RIGHT JOIN → right table
* FULL OUTER JOIN → both tables

---

## 10. How can you optimize joins in Spark or Databricks? ⭐⭐⭐⭐⭐

Common answers include:

* Filter data **before** joining.
* Join on indexed, partitioned, or well-distributed keys where applicable.
* Use **broadcast joins** for small dimension tables.
* Avoid unnecessary `CROSS JOIN`s.
* Select only the columns you need before the join.
* Reduce data shuffling by partitioning or bucketing when appropriate.
* Handle data skew on join keys.

---

# DP-700 / Databricks / Spark Interview Focus

For modern data engineering roles, know these especially well:

* ✅ INNER JOIN
* ✅ LEFT JOIN
* ✅ FULL OUTER JOIN
* ✅ CROSS JOIN (and why to avoid it unless intentional)
* ✅ SELF JOIN
* ✅ NON-EQUI JOIN
* ✅ Broadcast Join (Spark)
* ✅ Shuffle Join / Sort-Merge Join (Spark)
* ✅ Partitioning and data skew during joins
* ✅ How join strategy affects performance and cloud cost

*/
