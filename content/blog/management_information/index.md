---
title: "Management Information"
intro: "One of the major reasons for installing uzERP is to get better information for key decision makers.


This blog post looks at the many ways that uzERP provides Management Information for your business."
draft: "false"
date: 2019-03-15
categories: ["Using uzERP"]
tags: ["Accounting","Analytics"]
banner: "rawpixel-983726-unsplash.jpg"
author: "Martyn Shiner"
---
It has often been said that what is measured by an organisation is what gets managed. It is also true that information relevant to one group of people within a company may be less than useful to another.

The design philosophy behind uzERP is to make information accessible and relevant to all users of the system - lists, dashboards and custom reports make this possible without any external software. In addition, as an integrated system, uzERP can quickly generate lots of transactions from your business processes - and by developing a **single source of truth**, all decision makers will be working from the same source data.

## Management Information from uzERP

So let's start with the basics - how can you get at the data uzERP generates and turn it into information.

### List Views
uzERP uses a list based system to display most data. Each view has default and extended options for selection and sorting which allows the user to see the information they are looking for very quickly.

As an example, see the list below of outstanding sales orders - this can be selected by customer, product, due date and status.

{{< figure src="solist.png" width="720" height="405" alt="uzERP Sales Order List" caption="The Sales Order list view">}}

There is also the option to select columns displayed from those available by clicking the 'select display fields' drop down and dragging the available fields. The standard system can therefore act as a 'self-service' reporting system for basic requirements.

Once the data required is displayed in the list can this can be printed, emailed or output to csv for further analysis in spreadsheets or importing into other systems.

### Dashboards

Dashboards are usually the starting point when getting information in front of decision makers. uzERP has a system of *uzLETS*, small data summaries that can be placed on a user's home page or the module dashboard page. Each user can customise their own view to show the uzLETS that are relevant to them.

There are many uzLets pre-installed with the system ranging from Aged Debtors to Overdue Purchase Orders. Here are a couple of examples from the [uzERP demo system](https://demo.uzerp.com):

{{< figure src="cbuzlet.png" alt="uzERP Cash Book uzLETs" caption="Cash Book module uzLETS" >}}

{{< figure src="souzlet.png" alt="uzERP Sales uzLETs" caption="Sales Order module uzLETS" >}}

As you can see from the above examples there are links to drill-down for more detailed information - as such uzLets are an impactful way of getting information in front of users in byte sized chunks. As well as being informational, because they are always up to date they take the form of a 'call to action' for users and are a useful part of daily workflow.

### Reporting Module

For more detailed analysis, uzERP has an integrated reporting module. It is possible to develop fully customised views of data and then use this to drive reports applicable to the business.

{{< figure src="reportwriter.png" width="720" height="405" alt="uzERP Report Writer" caption="Report writer example">}}

Reports can be grouped by type and published to particular user roles so that users only see the reports they need. In addition, reports can be attached to the menu system so they appear as standard lists to the user.

## External Management Information Systems

### Spreadsheets

As already [mentioned]({{< ref "#sales-orders" >}}) it is possible to export data from the standard views in the system, or from custom reports via csv or xml for import into other systems.

However, we can go one step further.

Data can be imported directly into spreadsheets from uzERP's database using a variety of connectors, including ODBC for Excel and the native postgreSQL connection from LibreOffice. Once this is done the data can feed automated analysis using pivot tables (PowerPivot in Excel) or the spreadsheet program's charting capabilities. Large volumes of transactions can be included from source data with no re-keying, improving the speed and accuracy of the information generated.

In a later post I'll outline how this can be achieved, and give some real world examples of the types of analysis that can be accomplished using these tools.

### Web based reporting

A good dashboard will help drive the decision-making process rather than simply present information - especially if they are clear, informative and visually appealing.

Web-based tools are now fairly mainstream and have brought advanced dashboard creation and data analysis into the small business sector. Recently we have developed fully customised online dashboards using the following open source tools linked up to the uzERP database:

* Redash (https://redash.io/) - we have a client that has a sales dashbord using this system
* Apache Superset (https://github.com/apache/incubator-superset/blob/master/README.md) - we have used Superset to replace spreadsheets at one site
* Shiny Dashboards (https://rstudio.github.io/shinydashboard/) - this system has been used to provide a fully integrated on-line Management Reporting system covering Sales, Operations and Financial information

## Final thoughts

uzERP uses an open source database system making availability of the underlying data a given - your data is yours and you always have free access.

The techniques and tools outlined above provide a way to enable us to implement enterprise class reporting and analysis. This is especially powerful for small businesses because they are being fed by live data from the uzERP system which improves decision making efficiency at an affordable cost.

Need help with some of your own Management Information challenges? Would you like to talk more about uzERP or any of the tools I've mentioned? Then do please get in touch via the [Contacts Page](/contact/).