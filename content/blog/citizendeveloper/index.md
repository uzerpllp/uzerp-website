---
title: "The Spreadsheet and the Citizen Developer"
intro: "Where does the line between professional programmer and Citizen Developer fall?"
draft: "false"
date: 2020-11-29
categories: ["Extending uzERP"]
tags: ["open source", "spreadsheets", "development", "NoCode"]
banner: "programmer.jpg"
author: "Martyn Shiner"
---

### Introduction

Where does the line between professional programmer and Citizen Developer fall?

I've been a qualified accountant for most of my working life. For as long as I can remember I've developed 'models' (usually called forecasts or budgets) and tried to automate repetitive tasks to make my 'workflow' more efficient. I've had to wrangle messy data from multiple sources into a 'consumable' format and produced reports to try to get some sense of where the business has been, and is going. I've done this as an employee, a business owner and a consultant.

Back in the 80's I used spreadsheets (Lotus-123 and VP-Planner plus) and DBase III - this morphed into Excel, Visual Basic and Clipper in the early 90's and became open source focused in the late 90's and early part of the last decade. I wrote my first 'web-app', in Lotus Notes would you believe, in 1996.

Obviously I now write 'proper' software in a version controlled and tested environment (I'm part of the uzERP team after all) and am comfortable with SQL, Python, PHP, Git and so on - but with my 'evil bearded accountant' hat on I believe I still am a Citizen Developer? And if I am..... what does that even mean in 2020?

### The Citizen Developer

I obviously googled this and got a ton of hits including the [Gartner Glossary]( https://www.gartner.com/en/information-technology/glossary/Citizen-Developer) which yields the following:

> A Citizen Developer is a user who creates new business applications for consumption by others using development and runtime environments sanctioned by corporate IT. In the past, end-user application development has typically been limited to single-user or workgroup solutions built with tools like Microsoft Excel and Access. However, today, end users can build departmental, enterprise and even public applications using shared services, fourth-generation language (4GL)-style development platforms and cloud computing services.

I think this is pretty much nails it - although the 4GL reference did make me smile especially as I _**have**_ actually written stuff in Informix-4GL myself.

The only bit I would take issue with is the 'environments sanctioned by corporate IT' - in my experience the Citizen Developer generally works outside of these parameters partly because corporate IT very often are constrained by time and budgets and can't deliver the systems needed to make people more productive as quickly as required.

### "You'll have to pry Excel from my cold dead hands"

The tool of choice for the Citizen Developer is, of course, the spreadsheet..... and in particular the accountant's best friend MS Excel. As an Open Source person I now use LibreOffice Calc, but the above statement rings true.

Every time an organisation, large or small, needs some 'new' workflow or procedure to collect or analyse data, the Citizen programmer reaches for the spreadsheet. That new quality recording app? Spreadsheet. Financial Risk assessment? Spreadsheet. Sales analysis - well maybe add in a sprinkle of Access.... fronted by a spreadsheet.

And we all know about the disasters that have ensued - JPMorgan, no less, losing $6 billion in the "London Whale" fiasco back in 2012. Enron, of course, right at the beginning of this century. And bang up to date - Public Health England this year and their revised Coronavirus case stats? The list goes on.

We are all guilty of knocking up that quick spreadsheet to produce a report, then tweaking it to add the sales numbers for the last quarter. Then again to add in the margin percentage and the gap analysis between actual and budget. And handing it over to the lad in accounts payable to manually enter the data each week from the customer intranet feed and stock report. And before you know it that one-off, personal spreadsheet becomes a mission critical app that the organisation relies on each week or month to drive operational and strategic decision making.

As the saying goes, if the only tool you have is a hammer, every problem is a nail - it is highly unlikely that Citizen Developers will ever fully relinquish their beloved spreadsheets.

Of course (in the words of Gartner above) Excel _**is**_ actually a "runtime environment sanctioned by corporate IT" and probably the only one available to most users, so the ubiquity of spreadsheet 'apps' built by Citizen Developers and end users is understandable.

### The Challenge of Big Data

There is a change happening.... 'Big data', and the increasing awareness of data science techniques in business, means that Python and 'R' are making inroads and appearing in the Citizen Developer's toolkit - especially where the data is provided in a digestible format from outside sources (like a web store export) but needs wrangling and summarising before reporting.

Tools like Jupyter notebooks and RStudio make repeatable reports much easier to produce but are still largely a niche proposition - the preserve of the those on the edge of the 'Citizen' envelope and getting to towards 'Pro' Developer territory.

MS have also upped the game with the Power BI extensions to Excel and the integration with Azure.... these require a more professional approach but have preserved Excel's position as the go-to 'Big Wrench' for the Citizen Developer.

### NoCode - a solution for the Citizen Developer?

As I said in the intro, I still see myself as a Citizen Developer and have used spreadsheets to good effect over many, many years - I've written a couple of blog posts here about [integrating LibreOffice Pivot tables](/tags/libreoffice/) with uzERP to produce meaningful information.

However, the problem as I see it has always been data collection and developing 'apps' using spreadsheets as the main tool. For my own part I've been a bit of an evangelist trying to get rid of the patchwork of spreadsheets in organisations I've worked for - especially where they  become part of the infrastructure which a company relies on rather than just an analysis and reporting tool.

To that end we kicked off some development effort in uzERP - there is a concept called 'User Space Tables' which was initially developed way back (in 2012/13 I believe). The point was to allow the uzERP-using Citizen Developer to use the existing ERP system to develop ways to collect data and have it stored in the postgreSQL backend. This could be linked correctly to static data in uzERP like customers, stock items, product groups etc, and be available in the uzERP Reporting module or to external analysis tools - including spreadsheets.

This works, after a fashion, but still takes a bit to get used to and is a bit flaky from a UI perspective.

So the relatively recent explosion of interest in [#nocode](https://www.google.com/search?q=%23nocode&oq=%23nocode&aqs=chrome..69i57j0j0i30l6.3688j0j7&client=ubuntu&sourceid=chrome&ie=UTF-8) solutions excites me greatly. For sure, a lot of these services have been around for a while now, but they are maturing to the point where they are really useful to us Citizen Developers.

However, a lot of the focus of the newer platforms seem to be in either in the automation space (Zapier, IFTTT, WebFlow) or addressing the problem of the public Web-App builder. Because of this they are also, in many instances, delivered as SAAS/PAAS solutions meaning that they'll fall foul of the 'environments sanctioned by corporate IT', sometimes be cost prohibitive for smaller enterprises, and seen as just as risky as the patchwork, user developed spreadsheet system they could replace. For examples of the latter problem look at the number of these solutions that closed down, or were swallowed up by bigger vendors in the past... leaving user developed apps no longer viable.

Some of these new solutions are, of course, are open source which has some attraction - but open source projects go away too, just like commercial SaaS/PaaS solutions - and even if the source code is available, it doesn't mean that anyone else will be interested in in maintaining it, either internally or externally.

This is a shame, as I do believe that the NoCode/LoCode solutions, based on web technologies, ought to be a big part of the toolkit of the Citizen Developer going forward - they have improved to the point where they are as easy to get into as the spreadsheet solution but still seem to lack the mind share that spreadsheets have with end users.

### Summary

The Citizen Developer is here to stay - organisations of all sizes have their own unique way of doing things and will always need extra 'apps' built outside of the core to get the job done ina timely manner.

In a corporate environment the IT department's 'pro' developers have a role to play in avoiding the patchwork of spreadsheets -  managing platforms, documenting APIs, maing alternative tools available and facilitating the Citizen Developer community to foster best practice is extremely important as, without governance, it is very easy to end up with a new hot mess replacing the patchwork of spreadsheets. Replacing one form of Shadow IT with another and, in the words of my colleague [Steve Blamey](https://uk.linkedin.com/in/steveblamey), ending up with a "Bring Your Own Disaster" is not where we want to be.

My feeling is that, alongside data science languages/tools like R and Python, NoCode/LoCode systems will mature to the point where they become as important to the Citizen Developer in the next few years as the Spreadsheet based solution has been in the past. If that leads to better, more integrated, solutions to business problems then this has to be a benefit for organisations large and small.

__And finally.... if you want to know more about how we can help you improve your business through better systems and improved information then do please get in touch via the [Contacts Page](/contact/).__