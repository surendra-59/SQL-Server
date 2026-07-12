Here's a concise interview-focused comparison.

| **Fact Table**                                     | **Dimension Table**                                      |
| -------------------------------------------------- | -------------------------------------------------------- |
| Stores measurable business data (facts).           | Stores descriptive information (attributes).             |
| Contains numeric values (sales, quantity, profit). | Contains text/details (customer name, product category). |
| Very large table with millions/billions of rows.   | Usually much smaller.                                    |
| Contains foreign keys to dimensions.               | Contains primary key referenced by fact table.           |
| Used for calculations and aggregations.            | Used for filtering, grouping, and labeling.              |
| Frequently updated with new transactions.          | Updated less frequently.                                 |
| Example: SalesFact                                 | Example: CustomerDim, ProductDim, DateDim                |

### Example

**Fact_Sales**

| DateKey | ProductKey | CustomerKey | SalesAmount | Quantity |
| ------- | ---------- | ----------- | ----------- | -------- |
| 101     | 201        | 301         | 500         | 2        |

**Dim_Product**

| ProductKey | ProductName | Category    |
| ---------- | ----------- | ----------- |
| 201        | Laptop      | Electronics |

---

# Star Schema

* Fact table at the center.
* Dimension tables directly connected to the fact table.
* Dimension tables are **denormalized**.
* Fewer joins.
* Faster query performance.
* Uses more storage due to data redundancy.
* Easier to understand and use.
* Best for BI dashboards and data warehouses.

**Structure**

```
        CustomerDim
             |
ProductDim -- FactSales -- DateDim
             |
        StoreDim
```

---

# Snowflake Schema

* Fact table at the center.
* Dimension tables are **normalized** into multiple related tables.
* More joins required.
* Slower query performance than star schema.
* Uses less storage.
* Reduces data redundancy.
* More complex to design and maintain.
* Suitable when storage efficiency and normalization are important.

**Structure**

```
CategoryDim
      |
ProductDim
      |
FactSales ----- CustomerDim ----- CityDim
      |
DateDim
```

---

# Star Schema vs Snowflake Schema

| Feature          | Star Schema              | Snowflake Schema            |
| ---------------- | ------------------------ | --------------------------- |
| Dimension tables | Denormalized             | Normalized                  |
| Number of joins  | Few                      | More                        |
| Query speed      | Faster                   | Slower                      |
| Storage          | More                     | Less                        |
| Redundancy       | Higher                   | Lower                       |
| Complexity       | Simple                   | Complex                     |
| Maintenance      | Easy                     | Moderate                    |
| Best for         | BI, Reporting, Analytics | Large enterprise warehouses |

---

## Interview One-Liners

* **Fact table:** Stores business measurements (facts) and foreign keys.
* **Dimension table:** Stores descriptive information used for filtering and grouping.
* **Star schema:** Denormalized dimensions with fewer joins for faster analytics.
* **Snowflake schema:** Normalized dimensions with more joins to reduce redundancy.
