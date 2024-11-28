# Comparative Study of Databases: SQL vs NoSQL

## 1. Introduction
For our project, we compared two data storage technologies to determine the best fit for our needs:
- **SQL (PostgreSQL with Prisma)**: A relational database paired with a modern, high-performance ORM.
- **NoSQL (Firestore)**: A NoSQL distributed database optimized for modern and mobile applications.

The goal of this study is to justify why **PostgreSQL with Prisma** was chosen as the primary solution.


## 2. Database Comparison

### 2.1 Evaluation Criteria

| Criterion                  | **SQL (PostgreSQL with Prisma)** | **NoSQL (Firestore)**         |
|----------------------------|----------------------------------|--------------------------------|
| **Data Model**             | Relational (structured)         | Document-based (unstructured) |
| **Performance**            | Excellent (advanced indexing)   | Very good (fast reads)         |
| **Scalability**            | Vertical and horizontal         | Horizontal                    |
| **Flexibility**            | Moderate                        | High                          |
| **Query Complexity**       | Excellent (advanced SQL support)| Limited (no joins)            |
| **Cost**                   | Predictable (self-hosted)       | Variable (pay-as-you-go)      |
| **Ecosystem**              | Large (extensions, tools)       | Integrated with Google Cloud  |
| **Ease of Use**            | Good (Prisma ORM)               | Excellent (simple NoSQL model)|


### 2.2 Strengths and Weaknesses of Each Solution

#### **SQL (PostgreSQL with Prisma)**
- **Strengths**:
  - **Structured Relational Model**:
    - Ideal for highly interconnected data (relationships between entities).
    - Integrity constraints ensure data consistency.
  - **Prisma**:
    - Simplifies writing complex queries with its modern, type-safe ORM.
    - Seamless integration with TypeScript, enhancing code safety.
  - **Rich Features**:
    - Supports complex transactions.
    - Advanced indexing for high performance.
  - **Mature Ecosystem**:
    - Broad compatibility with other tools and frameworks.
    - Suitable for use cases requiring data analysis or complex processing.

- **Weaknesses**:
  - **Less Flexible**:
    - Strict schemas require migrations for changes.
  - **Limited Horizontal Scalability**:
    - Relational databases can be more challenging to distribute compared to NoSQL for massive datasets.

#### **NoSQL (Firestore)**
- **Strengths**:
  - **High Flexibility**:
    - Suited for unstructured or semi-structured data.
    - No need for rigid schema definitions.
  - **Native Horizontal Scalability**:
    - Designed to handle large amounts of distributed data easily.
  - **Read Performance**:
    - Optimized for fast reads due to its document-oriented model.
  - **Ease of Use**:
    - Simple interface for reading and writing documents, ideal for rapid development or mobile apps.

- **Weaknesses**:
  - **Limited Complex Queries**:
    - No native support for joins, often requiring data duplication.
  - **Limited Transactions**:
    - Multi-document transaction support is limited, complicating some integrity guarantees.
  - **Variable Costs**:
    - Costs can become unpredictable for intensive use cases.


## 3. Justification for Choosing SQL (PostgreSQL with Prisma)

### 3.1 Data Model
- **SQL** is particularly suitable for our project, which requires **complex relationships** between entities.
- Firestore would have necessitated data duplication or workarounds to handle relationships, increasing the risk of inconsistencies.

### 3.2 Performance
- **PostgreSQL** offers excellent performance for complex queries due to:
  - Advanced indexing.
  - Optimized joins.
  - Atomic transactions, which are especially useful when multiple entities need simultaneous updates.

### 3.3 Scalability
- While Firestore offers superior horizontal scalability, PostgreSQL is **sufficiently scalable for our projected load** using features like partitioning and extensions such as Citus.

### 3.4 Ease of Development
- Prisma simplifies development with PostgreSQL by providing:
  - A modern ORM.
  - Seamless integration with TypeScript.
  - Clear and intuitive migration management.
- Firestore, though simpler at the start, would require rethinking data models to compensate for the lack of relationships, potentially making the codebase more complex over time.

### 3.5 Cost
- Using PostgreSQL with Prisma in a self-hosted or managed environment (e.g., AWS RDS) offers **more predictable costs** compared to Firestore, where expenses depend on usage (reads/writes).


## 4. Conclusion

### Why SQL (PostgreSQL with Prisma)?
- **Structured Relational Model**: Ideal for highly related data with complex relationships.
- **Robust Performance**: Efficient handling of advanced queries and transactions.
- **Mature Ecosystem**: Easy integration with Prisma and compatibility with our existing stack.
- **Predictable Costs**: Better control over expenses for anticipated workloads.

### Accepted Limitations
- Horizontal scalability may require extra effort if data volume grows exponentially.
- The rigidity of the relational model demands migrations for schema changes.

### Final Decision
**PostgreSQL with Prisma has been chosen for its robustness, relational structure, and seamless integration with our existing tools.** While Firestore offers flexibility and native scalability, it is less suited for our specific requirements of consistency and complex queries.
