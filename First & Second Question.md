Questions

Q1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
Ans -
1. 1. By enforcing a Not-Null constraint on the "id" column within the "Product_Category" table.
2. Utilizing a database trigger on the "Product" table to verify the validity of the "category_id" value during the insertion of a new record or the update of an existing one.

Q2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
Ans.
To ensure the validity of each product's category in the "Product" table, we will employ the principle of Referential Integrity, which safeguards the consistency and accuracy of data relationships between tables. This is primarily achieved through the implementation of foreign key constraints.

1. We will establish a foreign key constraint between the "Product" and "Product_Category" tables. Alternatively, a similar approach can be implemented using stored procedures, such as:

```sql
ALTER TABLE Product
ADD CONSTRAINT FK_Product_Category
FOREIGN KEY (category_id)
REFERENCES Product_Category(category_id);
```

2. The database system will reject any attempt to assign an invalid category, thereby upholding data integrity.

3. By maintaining Referential Integrity, the database ensures the coherence of data across tables. This approach not only guarantees consistency and accuracy but also simplifies data management and upkeep in the long term.




