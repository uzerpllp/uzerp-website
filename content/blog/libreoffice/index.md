---
title: "Integrate LibreOffice and PostgreSQL"
draft: "true"
date: 2019-05-13
categories: ["Extending uzERP"]
tags: ["Accounting","Reporting"]
banner: "img/banners/mika-baumeister-703680-unsplash.jpg"
author: "Martyn Shiner"
---
As noted in a previous post, one reason for installing uzERP is to get better information for key decision makers, many of whom like to use spreadsheets to carry out analysis or generate reports.

Using the open source spreadsheet [https://www.libreoffice.org/](LibreOffice) and uzERP's backend database [postgreSQL](https://www.postgresql.org/) - "The World's Most Advanced Open Source Relational Database" - this blog post looks at how you can tie the two together to develop an integrated Management Information system.
<!--more-->

## Online information directly from within the system

### Spreadsheets
As already mentioned it is possible to export data from the standard views in the system, or from custom reports via csv or xml for import into other systems.

However, we can go one step further.....

Since uzERP uses a postgreSQL database as its back-end server data can be ported directly into spreadsheets using a variety of connectors including ODBC and the native postgreSQL connection from LibreOffice. Once this is done the data can 'drive' automated analysis using standard pivot tables (or PowerPivot in Excel) or charting.

### Web based reporting
In the past we have developed full cusomised online dashboards using the following ipen source tools linked up to the uzERP database

 * Redash (https://redash.io/) - we have a client that has a sales dashbord using this system
 * Apache Superset (https://github.com/apache/incubator-superset/blob/master/README.md) - we have used Superset to replace spreadsheets at one site
 * Shiny Dashboards (https://rstudio.github.io/shinydashboard/) - this system has been used to provide a fully integrated on-line Management Reporting system covering Sales, Operations and Financial information

The tools provide a way to get enterprise class reporting and analysis for the small business.