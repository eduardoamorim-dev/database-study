# 📊 DATABASE - Personal Notes and References

Repository created to store learning notes, references, scripts, and hands-on exercises about databases. Personal documentation for quick reference and continuous learning.

## Summary

- [Glossary](https://github.com/eduardoamorim-dev/database-study?tab=readme-ov-file#glossary)
- [Database Elements](https://github.com/eduardoamorim-dev/database-study?tab=readme-ov-file#database-elements)
- [Uploading Postgres to a container with Docker Command and Docker Compose](https://github.com/eduardoamorim-dev/database-study?tab=readme-ov-file#uploading-postgresql-to-a-container-with-docker-command-and-docker-compose)
- [Links](https://github.com/eduardoamorim-dev/database-study?tab=readme-ov-file#links)

## Glossary 

<dl>
  <dt><strong>Database</strong></dt>
  <dd>An organized collection of structured data stored and accessed electronically.</dd>

  <dt><strong>Table</strong></dt>
  <dd>A collection of related data organized in rows and columns. Also known as a relation in relational databases.</dd>
    
  <dt><strong>Data Type</strong></dt>
  <dd>The classification of data that determines what values can be stored. Common types include INTEGER, VARCHAR, DATE, and BOOLEAN.</dd>

  <dt><strong>Attribute/Fields</strong></dt>
  <dd>A characteristic or property of an entity, represented as a column in a database table. For example, in a customer table, attributes might include name, email, and phone number.</dd>
  
  <dt><strong>Column</strong></dt>
  <dd>The vertical component of a database table that holds specific pieces of data about each record. Each column has a defined data type.</dd>
  
  <dt><strong>Record/Row/Tuples</strong></dt>
  <dd>A horizontal component of a table that contains a complete set of information about an entity.</dd>  

  <dt><strong>Relationship</strong></dt>
  <dd>The logical connection between tables that shows how data in different tables is related. For example, how customer orders connect to customer information.</dd>  

  <dt><strong>Instance</strong></dt>
  <dd>A running version of a database that users can connect to and interact with. One database schema can have multiple instances.</dd>  

  <dt><strong>Instance</strong></dt>
  <dd>A running version of a database that users can connect to and interact with. One database schema can have multiple instances.</dd>  
  
  <dt><strong>Backup</strong></dt>
  <dd>A copy of database data stored separately from the primary database, used for recovery in case of data loss or system failure.</dd>

  <dt><strong>Constraint</strong></dt>
  <dd>Rules applied to data in tables to maintain data integrity. Common constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, and NOT NULL.</dd>
  
  <dt><strong>Foreign Key</strong></dt>
  <dd>A column or combination of columns that creates a link between data in two tables, maintaining referential integrity.</dd>

  <dt><strong>Primary Key</strong></dt>
  <dd>A column or combination of columns that uniquely identifies each row in a table.</dd>  
  
  <dt><strong>Index</strong></dt>
  <dd>A data structure that improves the speed of data retrieval operations on database tables.</dd>
  
  <dt><strong>Join</strong></dt>
  <dd>An operation that combines rows from two or more tables based on related columns between them.</dd>
  
  <dt><strong>Normalization</strong></dt>
  <dd>The process of organizing data to reduce redundancy and improve data integrity, typically through the application of normal forms.</dd>
  
  <dt><strong>Query</strong></dt>
  <dd>A request for data or information from a database, typically written in SQL.</dd> 

  <dt><strong>Schema</strong></dt>
  <dd>The logical structure that represents the design of a database, including tables, relationships, constraints, and other elements.</dd> 
  
  <dt><strong>Transaction</strong></dt>
  <dd>A sequence of database operations that is treated as a single unit of work, following ACID properties (Atomicity, Consistency, Isolation, Durability).</dd> 

  <dt><strong>View</strong></dt>
  <dd>A virtual table based on the result set of a stored SQL query. Views can simplify complex queries and provide an additional security layer.</dd> 

  <dt><strong>DBMS - Data base management service.</strong></dt>
  <dd>This is a software system designed to manage, store, retrieve, and update data in databases. It serves as an interface between the database and its users or applications.</dd>
  
  <dt><strong>SGDB - Serviço de Gerenciamento de Banco de Dados.</strong></dt>
  <dd>The Portuguese equivalent of DBMS. Note that it's "SGBD" rather than "SGDB" - the letters represent "Sistema de Gerenciamento de Banco de Dados."</dd>
  
  <dt><strong>RDBMS - Relation data base management service.</strong></dt>
  <dd>A specific type of DBMS that manages relational databases, where data is stored in tables with relationships between them. Examples include MySQL, PostgreSQL, and Oracle.</dd>
  
  <dt><strong>SQL - Structured Query Language</strong></dt>
  <dd>The standard language used to communicate with and manipulate relational databases. SQL enables tasks like querying data, updating records, and managing database structures.</dd>
</dl>


---

## Database Elements

![dbase_components](https://github.com/user-attachments/assets/02a6b789-3dd6-48c9-a3c5-c41d49e4faee)

---

## Uploading Postgres to a container with Docker Command and Docker Compose

### Prerequisites
- PostgreSQL installed (optional for tools like `psql`)
- Docker installed
- Docker Compose installed

---

### 1° Option - Create a PostgreSQL Container with Docker Command

### Step-by-Step Setup Process

1. **Create a Project Directory**
  
```bash
  mkdir postgres-docker
  cd postgres-docker
```

2. **Run the PostgreSQL Container**

```bash
  docker run --name pg -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -p 5432:5432 -d postgres
```

**Explanation**

This command creates a new PostgreSQL database container with minimal configuration. Think of it like setting up a lightweight database server on your computer.

**The goals are straightforward**

- Spins up a PostgreSQL container with minimal configuration.
- Maps the database to your local machine's port 5432.
- Sets the username and password to root for simplicity.
- Runs the container in detached mode (-d), keeping your terminal free

**Use Cases**

This setup is particularly useful when you need a quick database for:

- Testing your applications
- Learning SQL
- Experimenting with PostgreSQL features
- Local development work

**Limitations**

Keep in mind that this is a basic setup — any data you store will disappear if you remove the container. It's like having a temporary workspace that you can quickly create and dispose of when needed.

---

### 2° Option - Create a PostgreSQL Container with Docker Compose

### Step-by-Step Setup Process

**Prerequisites**

- Postgresql installed
- Docker installed
- Docker Compose installed

**Step-by-Step Setup Process**

1. **Create a Project Directory**

```bash
  mkdir postgres-docker
  cd postgres-docker
```

2. **Create a `docker-compose.yml` File**
  
```bash
  touch docker-compose.yml
```

3. **Edit the `docker-compose.yml` File**

Add the following content:

```yml
version: '3.8'  
services:  
  db:  
    image: postgres  
    container_name: postgres_container  
    environment:  
      POSTGRES_USER: root  
      POSTGRES_PASSWORD: root  
    ports:  
      - "5432:5432"  
    restart: always
```
**Explanation:**

This configuration creates a PostgreSQL database container with more structured settings. Think of it as creating a recipe for your database setup that can be easily replicated and modified.

**The goals are straightforward**

- Define a consistent database environment.
- Make the database accessible through port 5432.
- Set up admin access with username and password as "root".
- Ensure the container restarts automatically if it crashes.

**Use Cases**

This approach is particularly useful when you need:

- Project-specific database configurations
- Version-controlled database setups
- Consistent development environments across a team
- Easy deployment and scaling options

**Additional Suggestions**

Add volumes for data persistence:

```yml
  volumes:
    - db_data:/var/lib/postgresql/data
```

**Limitations**

Keep in mind this is still a basic setup. While more structured than a single Docker command, you might want to add volumes for data persistence, networks for container communication, or health checks for monitoring. It's like having a template that you can easily enhance as your project grows.

>**Final Notes**
>
>Both options are effective for setting up a PostgreSQL database:
>
>Option 1 is faster for simple use cases or temporary setups.
>
>Option 2 is better for long-term projects and collaborative environments.
>
>For more advanced setups, consider adding persistence, networks, or monitoring tools to improve reliability and scalability.
  
---

## Links

- [Download postgresql](https://www.postgresql.org/download/)
- [Install guide postgresql](https://www.w3schools.com/postgresql/postgresql_install.php)
- [Download docker](https://docs.docker.com/compose/)

