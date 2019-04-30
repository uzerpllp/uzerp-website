---
title: "Integrate LibreOffice and PostgreSQL"
draft: "false"
date: 2019-05-07
categories: ["Extending uzERP"]
tags: ["Accounting","Analytics","LibreOffice","Spreadsheets"]
banner: "mika-baumeister-703680-unsplash.jpg"
author: "Martyn Shiner"
---
As noted in a [this post](/blog/2019/03/18/management_information/), one reason for installing uzERP is to get better information for key decision makers, many of whom like to use spreadsheets to carry out analysis or generate reports. This was also explored in a [another post](/blog/2019/05/01/libreoffice_pivot/) on csv files and LibreOffice Pivot Tables.
<!--more-->
Using the open source Calc spreadsheet from [LibreOffice](https://www.libreoffice.org/) and uzERP's backend database [postgreSQL](https://www.postgresql.org/) - "The World's Most Advanced Open Source Relational Database" - this blog post looks at how you can tie the two together to allow users to access information directly with no rekeying.

### Install LibreOffice Base

The current version of LibreOffice is 6.2, although the repo for your particular operating system may be slightly behind this. I use Ubuntu 18.04 on my development laptop and I have version: 6.0.7.3.

In order to connect to postgresql the following components must be installed

* LibreOffice Base
* The postgreSQL sdbc connector

Some distributions do not install these LibreOffice components by default so you should check that they are there. On Ubuntu they can be installed from the software centre or with the following command at the terminal:

```bash
user@host:~$ sudo apt install libreoffice-base && libreoffice-sdbc-postgresql
```

### Connecting to a postgreSQL database

LibreOffice uses its own Base application to connect to a postgreSQL backend providing a 'bridge' to the Calc spreadsheet - this is analogous to an ODBC connection in Office. Base files used in this way are saved locally (or on a network share) but do not contain any data.

By selecting File->New->Database from within LibreOffice you are presented with a database setup wizard - this will guide you through the steps to connect to uzERP (or any other database backend)

* __Step 1__ Select database.
* __Step 2__ Connection settings - here you must specify a datasource URL in the form postgresql://host:port/database which is site dependent. Usually the port for uzERP is 5432 but note that on a standard postgreSQL install the database server is not set up to answer network connections - this must be configured by your network system administrator.
* __Step 3__ Set up the user authentication - the uzERP database backend comes with a pre-defined read only user which you should use to connect to the database. There is the opportunity to test the connection parameters at this stage to ensure that you can access the database.
* __Step 4__ Save and proceed - this section allows you to register the database in LibreOffice - this is very important since if the database is NOT registered it won't be available to the Calc spreadsheet application.

Once you press finish you can save the Base file to a location of your choice which is registered in LibreOffice.

### Security

PostgreSQL has enterprise class security baked in and it is suggested you set things up as follows:

* Only make database connections available on the local subnet via the postgreSQL config files;
* Use a read only user to connect from LibreOffice - uzERP comes with a read only user set up but you can add several of these for different user groups;
* Use the postgreSQL GRANT security model to limit the views available to the read only users you add - this allows you to allow granular access to information in the database;
* Specify different Base files for different groups and limit the write access to these files to the file to system administrators.

The LibreOffice Base application can add a further level of security by restricting the tables displayed to the user - go to Tools->Table Filter and select the schema and/or tables you wish the user to see in the Data source selection dropdown.

### Using the data in LibreOffice Calc

From the LibreOffice Calc menu go to Tools->Options (Alt-F12) and select Databases under LibreOffice Base - this will show that the database is registered for use.

Additionally you can View all the data sources that you have registered using View->Data Sources (Shift-Ctrl-F4). This opens a Data Explorer window and toolbar with all of the data sources registered in LibreOffice shown. A neat feature is the ability to select a table and view the raw data that is being returned by the connection. From the explorer toolbar you can:

* sort and filter the data;
* find individual and groups of rows;
* paste individual rows into the spreadsheet.

#### Quick start - set up a Pivot Table

Once you have the sources you want set up you can use the backend data to 'drive' automated analysis using the pivot tables and charting capabilities within calc. This is a subject I'll return to in a later post, but for the moment here's a quick start.....

Go to Data->Pivot Table and check the "Data Source registered in LibreOffice" option on the Select Source Dialog.

The connection dialog will then ask for the the following (in all cases choose from the drop down):

* Database name - a list of registered data sources;
* Type - for postgreSQL select the Table type. You will need to enter a password to connect to uzERP tables;
* Data source - this will show a list af tables (which will include views as well) available.

Once Calc makes the connection the Pivot Table Layout Dialog will be shown listing the columns from the table you selected - from there a 'live feed' pivot table can be set up and saved for later use.

### Summary

uzERP uses the Open Source database postgreSQL to store organisation wide data.

By connecting to the backend database using a another Free and Open Source tool, LibreOffice, users can get access to business critical data generated via your organisation's standard workflow without the need for time consuming re-keying. This data can then be used in analysis to drive better, more informed decisions thereby improving business performance.

__And finally.... if you want to know more about how we can help you improve your business through better systems and improved management information then do please get in touch via the [Contacts Page](/contact/).__