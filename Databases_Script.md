Databases
========================================================
author: John Yocum
date: January 08, 2015
transition: fade

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small> 

Introduction
========================================================

Research produces data, and information that need to stored for future review or processing. Databases are one such solution, offering an integrated system of information storage, and management. There are a variety of database systems on the market, each with their own pros and cons. During this presentation I'll be covering some key terms, database types, and example use cases for them.

Databases
========================================================

Databases come in all shapes and sizes. In general, there are three basic types. The flat file, which is much like a spreadsheet. Relational, which is like a series of spreadsheets linked by common identifiers. And, the family of NoSQL databases, which have various storage models for different use cases.

Much like the variety of database types, there are a variety of query languages. A query language is how you interact with the database. With it, you can insert new data, update records, etc. We'll go over some specific languages like Structured Query Language later in the presentation.

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

Before we can discuss the details of each database type, and their related query languages, we have to get some key terms out of the way. These terms will come up again later, in addition to being found in numerous database books, and articles.

- CRUD: Create, Read, Update, Delete

CRUD represents the four most basic database operations. Create refers to creating new entries, or adding new data to the database. Read, as the name implies is retrieving data from the database. Update is simply changing the contents of an existing database record. And, Delete, is the removal of a record.

- ACID: Atomicity, Consistency, Isolation, Durability

ACID is a method of ensuring that data is stored reliably. Atomicity or an atomic operation, means either the transaction or query is completed fully, or not completed at all. In other words, if the query fails, the database must not be changed. Consistency means that database must remain in a valid state. If the database has any data validation rules, all data must be in compliance with them. Isolation is important in multi-user databases. With Isolation, each users transactions must not interfere with each other, so that each user has a consistent view of the database. Durability means the data has been commited to disk. So, that in the event of a power failure, crash, etc. your data is safe.

- Normalization

Normalization is all about removing redundant data. For example instead of storing a customer's contact information with their order. The order would refer to a customer ID number, which refers to their contact information. Thus, multiple orders can refer to the same data.

- CAP Theorem

CAP Theorem is mostly relevant to distributed NoSQL databases. That is databases which are spread across many servers. It states that you can not deliver a consistent database view, ensure that every query is responded to, and tolerate a failure in the system at the same time. In other words, you must compromise in one of those areas, to guarantee the other two.

- Schema

A database schema is a formal description of the database structure. It defines the tables, datatypes, and other rules governing the database.

http://en.wikipedia.org/wiki/CAP_theorem
http://en.wikipedia.org/wiki/ACID
http://en.wikipedia.org/wiki/Create,_read,_update_and_delete
http://en.wikipedia.org/wiki/Database_normalization
http://en.wikipedia.org/wiki/Database_schema

Types
========================================================

There are three basic types of databases. The flat file, which is much like a spreadsheet, or table of values. Relational, which is a series of tables related based on identifiers. And, finally the NoSQL group, which offer various data storage models each with a niche application.

- Flat
- Relational
- NoSQL (various storage models)

Flat File
========================================================

Flat file databases are extremely simple. They are simply a single table of values, just like a spreadsheet. The actual data format varies, there are proprietary formats like Excel, but open standards like CSV or comma separated values, are widely seen.

Due to their simple nature, they lack a number of features found in more capable database systems. For example, they lack indexing, which means that searching a large flat file could require considerably more time than a relational database. They also lack concurrent write access, since they aren't server based. Finally, updates can be extremely slow, as they require rewriting the entire file to disk after making a change.

All these limitations aside, there are some benefits. Flat files can be very lightweight in resource usage, atleast when they are small in size. For databases using CSV or similar formats, you can even edit the database using a basic text editor.

That said, it's generally best to not go with a flat file database for storage. If at some point you find that your needs change, converting to a more capable format, could become a rather daunting task.

- Lightweight to a point
- Limited scalability
  - No builtin concurrent access
  - No indexing
- Lacks builtin consistency checking

Flat File Continued
========================================================

Show a CSV file, demonstrate adding an entry, etc.

- show screenshot or demo of flat file

Flat File Examples
========================================================

- When to use it
- Recording temperature from a single sensor

Relational
========================================================

Relational databases, as their name implies, relate data from one table to another. These relations reduce the duplication of data that is common to multiple records. For example, in an ordering system, you could tie your customers with one table, and link their orders to them via a customer identification number.

Relational databases are basically the jack of all trades in the database world. They are highly flexible enabling them to meet the widest number of use cases. But, that flexibility comes at a price. You have to tell the database about the data you plan to store. In other words, a relational database requires a schema to define the structure of your data, and how it relates.

Virtually all of them support ODBC or Open Database Connectivity, which is a standardized interface between an operating system or programming language and the database driver. Through ODBC, you can plug your database into a huge number of applications, such as R or even Excel.

There are variety of relational database engines on the market, some open source, others proprietary. The most common open source database is MySQL, which is now owned by Oracle. For those with very small needs, there is SQLite which is commonly embedded into other applications like Firefox and Android. Even Microsoft has an offering, in the form of Microsoft SQL Server.

So, which should you choose? My advice is to pick an open source option, like MySQL or Postgres. They have low minimum resources making them easy to setup on a laptop for testing purposes. Documentation is widely available. And, more importantly, their free nature means, a lot of folks have taken the time to integrate them into a huge array of tools.

That said, different engines make sacrifices to make gains in other areas. This commonly occurs in the area of ACID compliance. A database may forgo strict data validation, or consistent disk writing to speed up query response time. If you value your data over speed, be sure to pick an ACID compliant database.

In short, if you aren't sure what kind of database to use, an ACID compliant relational database is a good start. It's typically easier to migrate from a relational database to other types, as opposed to converting to one.

- General purpose
- Wide application support through ODBC
- Less duplicate data
- Example Engines
  - MySQL
  - SQLite
  - Microsoft SQL Server

Relational Continued
========================================================

Use MySQL Workbench to create a couple of related tables, and show their relations

- Show screenshot or demo of relational DB

Relational Examples
========================================================

- When to use it
- Tracking multiple samples and locations
- Recording survey and interview answers

NoSQL
========================================================

NoSQL or "Not Only SQL" databases serve a variety of niches. Each implementation is geared towards a limited set of use cases, in other words, they don't try to be general purpose databases. NoSQL databases are most commonly associated with Big Data, and High Performance Computing. By Big Data, we're talking about databases in the multi terabyte and larger range. But, not only are they big, they generally require high throughput either from thousands of concurrent requests or simply doing a query across a few billion rows of data in a short period of time.

Within the NoSQL arena, there are a lot of options. A couple commonly used are Apache's Cassandra, which functions similarly to a traditional database. It has tables, which consist of rows and columns. However, the method you query across multiple tables is a bit different than a Relational Database. mongoDB on the other hand, is known as a Document Store. A document being an object containing a series of values. Where a value could be as simple as a name, to an entire PDF. In addition, objects can be related to each other through their unique IDs.

With all this variation in data storage methods, there has to be a catch. While many relational databases offer ACID compliance, NoSQL databases rarely do. They make many sacrifices in order to scale massively. The guiding rule with NoSQL is the CAP Theorem which basically says you can't ensure every server shows the exact same data, handle every query, and not lose access to something in the event of a crash.

So, which NoSQL option to go with? That isn't an easy question to answer. Since each database system varies from the next, you have to closely evaluate your needs. You need to consider what questions you are asking from your data. Also factor in, what is your data. For example, is it a huge table of values, or millions of documents. Finally, look at the other tools you are using. They may include support for one or maybe two options. In which case, you are either stuck with those choices, or recondier the tools being used.

- "Not Only SQL"
- Big Data
- Example Engines
  - Apache Cassandra
  - mongoDB

NoSQL Continued
========================================================

Much like there are a number of NoSQL databases, each excelling in their own ways, there are a variety of storage models. A storage model is how the data is actually stored within the database. Each storage method is best suited to select use cases, or applications. You'll want to consult the documentation for each database to see what it's most suited for. You may also want to look to sites like biostars.org to see what others in your field are using to solve their problems.

http://en.wikipedia.org/wiki/NoSQL#Types_of_NoSQL_databases

- Show the different data storage models
- Key/Value
- Document
- Column

NoSQL Examples
========================================================

- When to use it
- Recording high resolution (frequent) data from multiple sensors or locations
 
Query Languages
========================================================

A database isn't very useful if you don't have a way to enter, and retrieve data from it. A query language enables you to enter data, select data based on criteria, change existing data, and even remove it.

The most prevalent is SQL or Structured Query Language which is a standardized language implemented by most relational databases. However, it's not alone in that arena. Some databases such as Oracle, and Postgres have their own addons called Procedural Languages which enable you to leverage scripting languages like Perl within the database engine itself.

Outside of the relational database world, the languages differ from one database engine to the next. For example, Apache's Cassandra offers Cassandra Query Language which has an SQL inspired syntax.

- SQL
- CQL
- Etc

Structured Query Language
========================================================

SQL or Structured Query Language is the most widely used database query language. With SQL, you can query for data, create new databases, etc. At the core, SQL is an ANSI standardized language, enabling multiple database vendors to implement it. That said, SQL itself doesn't meet everyone's needs, resulting in proprietary extensions to it.

When possible, it's best to avoid the use of proprietary extensions. Otherwise, in the future should you need to change your database backend, for example switching from MySQL to Postgres, you may find yourself rewriting a lot of queries, and adjusting your database schema.

So, what does SQL look like? It has a lot of commands, though there are 4 basic commands which you'll want to get mose comfortable with. The SELECT command, which is used to select or retrieve data from the database. The INSERT command, which as the name states, is used to insert new data. UPDATE, which is used to change values within the database. And, DELETE, which removes records from the database.

- ANSI Standard
- Proprietary Extensions
- Widely Supported

Cut to a demo of using SQL with MySQL Workbench.

Other Query Languages
========================================================

Among the numerous non-standard query languages, here are few examples. Apache's Cassandra implements their Cassandra Query Language, which is SQL inspired. Oracle, Microsoft, and others offer Procedural Languages which embed some kind of scripting language within the database. Procedural Languages enable you to complex operations using things like Loops and Arrays within the database engine itself. By embeding the language into the engine, you gain performance from not having to transmit data across the network. As well, gaining capabilities like having some code executed upon a database insert or update.

In short, it's best to use a standardized language like SQL whenever possible. However, you shouldn't hinder yourself when the database engine offers an option that will improve performance or reduce data processing time.

- CQL: Cassandra
- PL/SQL: Oracle
- Transact-SQL: Microsoft SQL Server

Summary
========================================================

We've gone over quite a bit of basics on databases. So, let's review the key points to remember.

CRUD or Create, Read, Update, Delete are the basic operations performed on a database. In SQL these operations are represented with INSERT, SELECT, UPDATE, and DELETE.

ACID or Atomicity, Consistency, Isolation, Durability compliance controls how data is stored. It ensures that all queries are atomic, e.g. all or nothing. That data stored is in full compliance with any validation rules. And, that data written to submitted, is really stored on disk.

Normalization is the process of reducing duplication in a database by relating records, instead of repeating the same information in each record.

Schema is the design and specifications for the database. It defines tables, content types, etc.

CAP Theorem applies mostly to NoSQL. It states that all database servers in a group can't show the exact same data, respond to every query, and tolerate a node failure without compromising in one of those areas. 

We covered the three basic types of databases, Flat, Relational, and NoSQL. With flat files being generally frowned upon unless you have specific reasons for them. NoSQL typically only required when working with Big Data. And, relational being the most general  purpose database you can use.

We've also covered ODBC, or Open Database Connectivity. Which is a standardized scheme for connecting applications, and languages with databases. In the Java world, the equivalent is JDBC or Java Databae Connectivity. Regardless of language, these interfaces are your friend.

Finally, we covered some query languages. SQL being the most common query language, makes it a valuable tool to know how to use. If you plan to stick with a single database engine for a lot of projects, it may benefit you to become familiar with it's specific language. For instance, if working with Oracle a lot, you'll probably want to know PL/SQL.

- Key Terms: CRUD, ACID, Normalization, Schema, CAP Theorem
- Types: Flat, Relational, NoSQL
- Query Languages: SQL, CQL, etc
