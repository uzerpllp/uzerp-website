---
title: "Integrate LibreOffice and PostgreSQL"
draft: "true"
date: 2019-05-13
categories: ["Extending uzERP"]
tags: ["Accounting","Analytics","LibreOffice","Spreadsheets"]
banner: "mika-baumeister-703680-unsplash.jpg"
author: "Martyn Shiner"
---
As noted in a [previous post](/blog/2019/03/18/management_information/), one reason for installing uzERP is to get better information for key decision makers, many of whom like to use spreadsheets to carry out analysis or generate reports.

Using the open source Calc spreadsheet from [https://www.libreoffice.org/](https://www.libreoffice.org/) and uzERP's backend database [postgreSQL](https://www.postgresql.org/) - "The World's Most Advanced Open Source Relational Database" - this blog post looks at how you can tie the two together to allow users to access information directly with no rekeying.
<!--more-->

### Install LibreOffice

The current version of LibreOffice is 6.2 although the repo for your particular operating system may be slightly behind this. I use Ubuntu 18.04 on my desktop and I have version: 6.0.7.3.

In order to connect to postgresql the following components must be installed

* LibreOffice Base
* The postgreSQL sdbc connector

Some distributions do not install these LibreOffice components by default so you should check that they are there. On Ubuntu they can be installed from the software centre or with the following command from the terminal:

```
user@host:~$ sudo apt install libreoffice-base && libreoffice-sdbc-postgresql
```

### Connecting to a postgreSQL database

LibreOffice uses its own Base application to connect to a postgreSQL backend providing a 'bridge' to the Calc spreadsheet - this is analogous to an ODBC connection in Office. Base files used in this way are saved locally (or on a network share) but do not contain any data.

By selecting File->New->Database from within LibreOffice you can get to the setup wizard shown below

{{< figure src="select db.png" alt="Connect to postgreSQL" caption="Connect to postgreSQL" >}}

This will guide you through the steps to connect to uzERP (or any other database)

* __Step 1__ Select database (shown above).
* __Step 2__ Connection settings - here you must specify a datasource URL in the form postgresql://host:port/database which is site dependent. Usually the port for uzERP is 5432 but note that on a standard postgreSQL install the database server is not set up to answer network connections - this must be configured by your network system administrator.
* __Step 3__ Set up the user authentication - uzERP comes with a pre-defined read only user which you should use to connect to the database. there is the opportunity to test the connection parameters at this stage.
* __Step 4__ Save and proceed - this section allows you to register the database in LibreOffice - this is very important since if the database is NOT registered it won't be available to the Calc spreadsheet application. 

Once you press finish you can save the Base file which is registered in LibreOffice.




### Using the database in Calc

From Calc go to Tools->Options (Alt-F12) and select Databases under LibreOffice Base - this will show that the database is registered for use.

To set up a Pivot Table 

Data->Pivot Table and check Data Source registered in LibreOffice. The connection dialog will ask to the database type, select table, and Data source. The latter dropdown should list all the tables avaiable.latter    

Once this is done the data can 'drive' automated analysis using standard pivot tables (or PowerPivot in Excel) or charting.

### Security

PostgreSQL has good security and it is suggested as follows

1. Only make database connections available on the local subnet;
2. Use a read only user to connect - you can set up several of these for different user groups;
3. Use the postgreSQL GRANT security model to limit the views availble to the read only users
4. Specify different Base files for different groups and limit the ability to write to the file to system administrators;


 

### Web based reporting

In the past we have developed full cusomised online dashboards using the following ipen source tools linked up to the uzERP database

 * Redash (https://redash.io/) - we have a client that has a sales dashbord using this system
 * Apache Superset (https://github.com/apache/incubator-superset/blob/master/README.md) - we have used Superset to replace spreadsheets at one site
 * Shiny Dashboards (https://rstudio.github.io/shinydashboard/) - this system has been used to provide a fully integrated on-line Management Reporting system covering Sales, Operations and Financial information

The tools provide a way to get enterprise class reporting and analysis for the small business.


__And finally.... if you want to know more about how we can help you improve your business through better systems and improved information then do please get in touch via the [Contacts Page](/contact/).__