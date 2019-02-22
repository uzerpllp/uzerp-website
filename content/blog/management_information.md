---
title: "Management Information"
draft: "true"
date: 2019-04-10
categories: ["Using uzERP"]
tags: ["Accounting","Reporting"]
banner: "img/banners/rawpixel-983726-unsplash.jpg"
author: "Martyn Shiner"
---

One reason for installing uzERP is to get better information for key decision makers.

This blog post looks at a number of ways this can be achieved.
<!--more-->

## Online information directly from within the system

### uzLets
These are small 'widgets' that can be placed on the home page or 'dashboard' within each module. Each user can customise their view showing the uzLets that are relvant to them.

Examples of uzLets that come pre-installed with the system are 

Cashbook Module - 
<img src="/img/blog/cbuzlet.png" alt="Cashbook uzLets" width="750" />

Sales Orders Module - Overdue Sales Orders

### Lists
uzERP uses a list based system to display data with options to select and sort based on what is required

As an example the list of outstanding sales orders can be selected customer, product, due date and status

There is also the option to select columns displayed from those available.

Once the data required is shoing in the list can this can be printed or output to csv for analysis in spreadsheets or importing into other systems.

### Reporting Module
uzERP has an integrated reporting module that is driven directly from the back end database - it is possible to write fully customised views of the data and then use this to drive reports applicable to the business.

Reports generated this way can be attached to the menu system so they appear as standard lists to the user.

## External reporting systems

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