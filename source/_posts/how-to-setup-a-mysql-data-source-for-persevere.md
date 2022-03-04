title: How to setup a mysql data source for Persevere
tags:
  - mysql
  - Persevere
  - serverside
id: 138
categories:
  - Server-side javascript
date: 2008-07-31 15:29:36
lang: en
---

![Persevere logo](http://persevere.sitepen.com/res/persevere.png)

If you don't know [Persevere](http://persevere.sitepen.com/) yet, check out its impressive list of features (JSONPath/JSON-RPC/Comet support, etc...).

Here is a short tutorial to expose your MySQL tables through the persevere JSON REST interface.

1.  Download [persevere](http://code.google.com/p/persevere-framework/) and unzip it.
2.  Download the [JDBC driver for MySQL](http://dev.mysql.com/downloads/connector/j/5.1.html) and put the jar file into the "persevere/lib" folder.
3.  Create a new file in "persevere/WEB-INF/config" named "myDatabase.json"
4.  We will now configure the data source: (replace "myDatabase" and "myTable" by your database and table names.)`
({
"id":"myDatabase.json",
"sources": [
{
"name":"myTable",
"sourceClass":"org.persvr.datasource.DatabaseTableDataSource",
"driver":"com.mysql.jdbc.Driver",
"connection":
"jdbc:mysql://localhost/myDatabase?user=myDbUser&amp;pass=",
"table":"myTable",
"idColumn":"id",
"dataColumns": [
"lastname",
"firstname",
...and so on with your table columns
],
"schema":{
"data":{"$ref":"../``myTable``/"}
}
}
]
}`Don't forget to change your database user name and password !
5.  run persevere ("java -jar start.jar") and visit the following pages:

    *   http://localhost:8080/myTable
    *   http://localhost:8080/myTable/
    *   http://localhost:8080/myTable/1
What to do next ?

*   Add other tables: "sources" is an array !
*   Use UTF8:  Adds the following at the end of  the connection string: `&amp;useUnicode=true&amp;characterEncoding=utf-8&amp;mysqlEncoding=utf8`
*   Add methods to the class or to its prototype (take a look at WEB-INF/config/examples.json)
*   Write a script to auto-generate the config file from a database structure (and post it on the [persevere forum](http://groups.google.com/group/persevere-framework))
*   Read the [Persevere Javascript Client Documentation](http://persevere.sitepen.com/persevere-client-readme.html) and start coding applications !
Have fun !