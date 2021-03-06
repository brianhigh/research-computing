Databases
========================================================
author: John Yocum
date: February 02, 2015
transition: fade

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small> 

Databases
========================================================

- Types
  - Flat
  - Relational
  - NoSQL (various storage models)
- Query Languages
  - SQL
  - CQL
  - Etc.

Key Terms
========================================================

- CRUD: Create, Read, Update, Delete
- ACID: Atomicity, Consistency, Isolation, Durability
- Normalization
- CAP Theorem
- Schema

Types
========================================================

- Flat
- Relational
- NoSQL (various storage models)

Flat File
========================================================

- Lightweight to a point
- Limited scalability
  - No builtin concurrent access
  - No indexing
- Lacks builtin consistency checking

Flat File Continued
========================================================

- show screenshot or demo of flat file

Flat File Examples
========================================================

- When to use it
  - Recording temperature from a single sensor

Relational
========================================================

- General purpose
- Wide application support through ODBC
- Less duplicate data
- Example Engines
  - MySQL
  - SQLite
  - Microsoft SQL Server

Relational Continued
========================================================

- Show screenshot or demo of relational DB

Relational Examples
========================================================

- When to use it
  - Tracking multiple samples and locations
  - Recording survey and interview answers

NoSQL
========================================================

- "Not Only SQL"
- Big Data
- Example Engines
  - Apache Cassandra
  - mongoDB

NoSQL Continued
========================================================

- Show the different data storage models
- Key/Value
- Document
- Tabular

NoSQL Examples
========================================================

- When to use it
 - Recording high resolution (frequent) data from multiple sensors or locations

Query Languages
========================================================

- SQL
- Procedural Language, e.g. PL/Perl
- CQL
- Etc

Structured Query Language
========================================================

- ANSI Standard
- Proprietary Extensions
- Widely Supported

Other Query Languages
========================================================

- CQL: Cassandra
- PL/SQL: Oracle
- Transact-SQL: Microsoft SQL Server

Summary
========================================================

- Key Terms: CRUD, ACID, Normalization, Schema, CAP Theorem
- Types: Flat, Relational, NoSQL
- Query Languages: SQL, CQL, etc
