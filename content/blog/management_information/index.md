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

This blog post looks at a number of ways that uzERP can provide Management Information (MI) for your business.
<!--more-->

## MI available from within uzERP

### Lists
uzERP uses a list based system to display most data. Each view has default and extented options to select and sort which allows the user to see the information they are looking for.

As an example, see the list below of outstanding sales orders - this can be selected by customer, product, due date and status.

#### Sales Orders
{{< figure src="solist.png" width="720" height="405" >}}

There is also the option to select columns displayed from those available by clicking the 'select display fields' drop down and dragging the available fields.

Once the data required is displayed in the list can this can be printed or output to csv for analysis in spreadsheets or importing into other systems.

### uzLets
These are small 'widgets' that can be placed on a user's home page or 'dashboard' within each module. Each user can customise their view showing the uzLets that are relevant to them.

There are many uzLets pre-installed with the system ranging from Aged Debtors to Overdue Purchase Orders. A couple of examples (from the [uzERP demo system](https://demo.uzerp.com)) are shown below:

#### Cash Book

{{< figure src="cbuzlet.png">}}

#### Sales Orders

{{< figure src="souzlet.png">}}

Looking at the above examples you can see that there are links to 'drill down' for further information - as such uzLets are an impactful way of getting information in front of users in the form of a 'call to action'.

### Reporting Module
uzERP has an integrated reporting module that is driven directly from the back end database - it is possible to develop fully customised views of the data and then use this to drive reports applicable to the business.

#### Report writer example

{{< figure src="reportwriter.png" width="720" height="405" >}}

Reports can be grouped by type and 'published' to particular user roles so that users only see the reports they need. In addition, reports can also be attached to the menu system so they appear as standard lists to the user.

## External MI systems

### Spreadsheets
As already mentioned it is possible to export data from the standard views in the system, or from custom reports via csv or xml for import into other systems.

However, we can go one step further.....

Since uzERP uses a postgreSQL database as its back-end server data can be ported directly into spreadsheets using a variety of connectors including ODBC and the native postgreSQL connection from LibreOffice. Once this is done the data can 'drive' automated analysis using standard pivot tables (or PowerPivot in Excel) or charting.

In a later post I'll outline how this can be achieved and give some real world examples.

### Web based reporting
In the past we have developed fully customised online dashboards using the following open source tools linked up to the uzERP database:

* Redash (https://redash.io/) - we have a client that has a sales dashbord using this system
* Apache Superset (https://github.com/apache/incubator-superset/blob/master/README.md) - we have used Superset to replace spreadsheets at one site
* Shiny Dashboards (https://rstudio.github.io/shinydashboard/) - this system has been used to provide a fully integrated on-line Management Reporting system covering Sales, Operations and Financial information

## Final thoughts

The design philosophy behind uzERP is to make information accessible and relevant to all users of the system uzERP - lists, uzLets and reports make this possible without any external software. 

But, given the open source database system and availability of the underlying data the techniques and tools outlined provides a way to get enterprise class reporting and analysis for small businesses - this is especially powerful for small businesses when hooked up to live data from the uzERP system.

If you think that we might be able to help you with some of your own Management Information challenges using uzERP or any of the tools I've alluded to,then do please get in touch via the [Contacts Page](/contact/).