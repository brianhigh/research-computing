Key Terms
=========

- CRUD: Create, Read, Update, Delete
- ACID: Atomicity, Consistency, Isolation, Durability
- Normalization
- CAP Theorem
- Schema

http://en.wikipedia.org/wiki/CAP_theorem
http://en.wikipedia.org/wiki/ACID
http://en.wikipedia.org/wiki/Create,_read,_update_and_delete

Relational vs Flat
==================

https://kb.iu.edu/d/ahrp

Relational

- more flexible
- more compact if data relations are possible
- converting a relational DB to flat-file, is much easier than the reverse

Flat

- no special software required
- performance gets worse and worse as it grows
- data can become duplicated and inconsistent


Structured Query Language
=========================

http://en.wikipedia.org/wiki/SQL

- purpose specific programming language for managing data
- most widely used language for database manipulation
- while standardized, code isn't entirely portable due to vendor specific features
- not all standardized syntax is supported by all implementations

NoSQL
=====

http://en.wikipedia.org/wiki/NoSQL

- may implement some subset of SQL
- generally associated with big data, and high scalability (large size or extremely high IO)
- each implementation is best for certain tasks (not a general purpose database)
- Examples
  - Apache Cassandra
  - mongoDB
- data storage model varies
- most modern implementations offer some type of distributed model, e.g. multiple storage nodes containing parts of the database
- MapReduce is one method/purpose for using some NoSQL systems

Relational
==========

- offer SQL, along with proprietary extensions
- general purpose, fits most use cases
- all popular database engines support ODBC allowing for wide application support
- Examples
  - Storing sample data, you could have a table containing test sites, and tables for each kind of test done. Then relate each test with a sample site.
  - Storing interview data. Say you plan to interview a person several times during a study. You could have a table containing interviewees, and a table containing interviews taken. 
- most relation databases support multiple users with concurrent access
- SQLite, MySQL, and Microsoft SQL Server are some example engines
- most implementations include constraint checks

Flat
====

- flexible structure, CSV, TSV, and Fixed Width are common. Even an Excel spreadsheet could be a flat database
- no database engine required
- some ODBC implementations offer a flat file driver, enabling limited SQL support
- best used for data where no relation is needed, or where every row is related to one thing.
  - For example, storing the temperature from a single temp sensor.
- no builtin concurrent access
