---
title: "Management Information"
intro: "One of the major reasons for installing uzERP is to get better information for key decision makers.


This blog post looks at a number of ways that uzERP can provide Management Information (MI) for your business."
draft: "false"
date: 2019-03-15
categories: ["Using uzERP"]
tags: ["Accounting","Analytics"]
banner: "rawpixel-983726-unsplash.jpg"
author: "Martyn Shiner"
---
It has often been said that what is measured by an organisation is what gets managed. It is also true that information relevant to one group of people within a company may be less than useful to another.

The design philosophy behind uzERP is to make information accessible and relevant to all users of the system - lists, uzLETS and custom reports make this possible without any external software. In addition, as an integrated system, uzERP can quickly generate lots of transactions from your business processes - and by developing a __single source of truth__, all decision makers will be working from the same source data.

## MI available from within uzERP itself

So let's start with the basics - how can you get at the data uzERP generates and turn it into information.

### Lists
uzERP uses a list based system to display most data. Each view has default and extended options for selection and sorting which allows the user to see the information they are looking for very quickly.

As an example, see the list below of outstanding sales orders - this can be selected by customer, product, due date and status.

#### Sales Orders
{{< figure src="solist.png" width="720" height="405" >}}

There is also the option to select columns displayed from those available by clicking the 'select display fields' drop down and dragging the available fields. The standard system can therefore act as a 'self-service' reporting system for basic requirements.

Once the data required is displayed in the list can this can be printed, emailed or output to csv for further analysis in spreadsheets or importing into other systems.

### uzLETS

Dashboards are usually the starting point when trying to get information in front of decision makers. uzERP has a system of 'uzLETS - small 'widgets' that can be placed on a user's home page or the front 'dashboard' page within each module. Each user can customise their view showing the uzLETS that are relevant to them.

There are many uzLets pre-installed with the system ranging from Aged Debtors to Overdue Purchase Orders. A couple of examples (from the [uzERP demo system](https://demo.uzerp.com)) are shown below:

##### Cash Book module uzLETS

{{< figure src="cbuzlet.png">}}

##### Sales Orders module uzLETS

{{< figure src="souzlet.png">}}

As you can see from the above examples there are links to 'drill down' for further detailed information - as such uzLets are an impactful way of getting information in front of users in byte sized chunks. As well as being informational, because they are always up to date they take the form of a 'call to action' for users and are a useful part of daily workflow.

### Reporting Module
Foe more detailed analysis, uzERP has an integrated reporting module that is driven directly from the back end database - it is possible to develop fully customised views of the data and then use this to drive reports applicable to the business.

#### Report writer example

{{< figure src="reportwriter.png" width="720" height="405" >}}

<br>
Reports can be grouped by type and 'published' to particular user roles so that users only see the reports they need. In addition, reports can also be attached to the menu system so they appear as standard lists to the user.

## External MI systems

### Spreadsheets
As already mentioned it is possible to export data from the standard views in the system, or from custom reports via csv or xml for import into other systems.

However, we can go one step further.....

Since uzERP uses a postgreSQL database as its back-end server, data can be imported directly into spreadsheets using a variety of connectors including ODBC and the native postgreSQL connection from LibreOffice. Once this is done the data can 'drive' automated analysis using pivot tables (PowerPivot in Excel) or the spreadsheets program's charting capabilities - large volumes of transactions can be included from source data with no re-keying - this improves the speed and accuracy of the information generated.

In a later post I'll outline how this can be achieved, and give some real world examples of the types of analysis that can be accomplished using these tools.

### Web based reporting
uzERP's integrated dashboards, based on uzLETs, while useful are fairly basic in design and scope. A good dashboard will help drive the decision-making process rather than simply present information - especially if the are clear, informative and visually appealing.

Web-based tools are now fairly mainstream and have brought advanced dashboard creation and data analysis into the small business sector. Recently we have developed fully customised online dashboards using the following open source tools linked up to the uzERP database:

* Redash (https://redash.io/) - we have a client that has a sales dashbord using this system
* Apache Superset (https://github.com/apache/incubator-superset/blob/master/README.md) - we have used Superset to replace spreadsheets at one site
* Shiny Dashboards (https://rstudio.github.io/shinydashboard/) - this system has been used to provide a fully integrated on-line Management Reporting system covering Sales, Operations and Financial information

## Final thoughts

uzERP uses an open source database system making availability of the underlying data a given - your data is yours and you always have free access.

The techniques and tools outlined above provide a way to enable us to implement enterprise class reporting and analysis - especially powerful for small businesses because they are being fed by live data from the uzERP system which improves decision making efficiently at an affordable cost.

If you think that we might be able to help you with some of your own Management Information challenges using uzERP or any of the tools I've alluded to,then do please get in touch via the [Contacts Page](/contact/).