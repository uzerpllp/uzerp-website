---
title: "LibreOffice Pivot Tables"
intro: "Pivot Tables are an extremely useful analysis tool - they are very flexible, powerful, and can generate valuable insights from large amounts of data if used properly. This post walks you through how to set up a Sales Ledger Receipts forecast using a Pivot Table in LibreOffice."
draft: "false"
date: 2019-05-01
categories: ["Using Uzerp"]
tags: ["Spreadsheets", "Cash-Flow", "LibreOffice", "Analytics"]
banner: "pivot.png"
author: "Martyn Shiner"
---

### Introduction

Pivot Tables are an extremely useful analysis tool - they are very flexible, powerful, and can generate valuable insights from large amounts of data if used properly. This post walks you through how to set up a Sales Ledger Receipts forecast using a Pivot Table in LibreOffice.

The power of pivot tables comes from using raw data - the example in this blog post is created using a csv file generated from uzERP example data showing open (unallocated) sales ledger transactions. There is an individual row for each invoice, credit note, journal or unallocated receipt meaning that the data is naturally in 'long format' which is required as a building block for pivot tables.

### Importing a csv

You can open a csv file directly in Libre Office - this presents the following window:
{{< figure src="open_a_csv.png" width="450" alt="sl_openitems.csv" caption="Opening a csv file in LibreOffice">}}

The sl_openitems.csv we are using is separated by commas with the first row being the column headings:

* customer
* status
* transaction_date
* id
* transaction_type
* our_reference
* ext_reference
* os_value
* currency
* rate
* base_os_value
* description
* payment_terms
* sl_analysis
* due_date
* due_year
* due_week
* pay_year
* pay_week

LibreOffice will attempt to infer the column type (date, number, string etc) from the data although the import process does allow for forcing column types if the auto-detection fails. There are also options to select alternative column separators, the character set of the data etc. For our purpose we can just use the dialog defaults.

### Creating the Pivot Table
Once the data is imported into LibreOffice click on a cell somewhere within your data range, then go to Data–>Pivot Table–>Pivot Table, leave the source as 'Current selection', and click OK. You should get a dialog that looks like this:

{{< figure src="pivot_table_layout.png" width="450" alt="Pivot Table Layout" caption="Pivot Table Layout in LibreOffice">}}

The box on the right right side of this dialog lists all of the columns from the csv that we imported earlier. If you are following along with the provided files (see blow) and for some reason you do not get all of the columns, highlight the whole range in the data set before you create the Pivot Table.

#### Table Fields
To use the columns from the data set in the Pivot Table you just drag-and-drop each field to the appropriate area in the Layout dialog as follows:

* Page Fields – You can limit the data to one or several values in one of your columns. For example, we will allow selection by sl_analysis so this field will be dragged to the Page Fields section;
* Data Fields – This area must contain at least one 'measure'. Columns in this area are aggregated - we can select the 'base_os_value' column which represents the outstanding value of each transaction in base currency (in this case Sterling). The column selected will be aggregated by the values defined in the Row and Column fields;
* Row fields – This gives us the aggregation option for rows. In our case we would like to know the total owed by each customer so we should drag the customer column from the Available Fields list here;
* Column Fields – Whatever you put here will be a column in the resulting Pivot Table. We are going to select the pay_year and pay_week columns from the Avaiable Fields which will 'spread' the customer totals by year/week.

{{< figure src="pivot_table_layout2.png" width="450" alt="Pivot Table Layout" caption="Pivot Table Layout with fields selected">}}

If you defined the fields as above you should then get a Pivot Table in a new tab that looks something like this (you may have to adjust the column widths).

{{< figure src="pt1.png" width="750" alt="Pivot Table 1" caption="Pivot Table #1 showing Customer Outstanding by Pay Week">}}

LibreOffice creates a new tab with the Pivot Table we defined. The example shows the customers in the Row column with the balances spread out by the week number when they should pay. There are 'Total Result' values for each column and row meaning we can see the estimated receipts each week and the total owed by each customer.

The Page Field (sl_analysis) allows you to select one, several, or all categories of the selected column - in our case we could select only Tier 1 customers and the table is recalculated to show values for only this.

#### Changing the Layout
While the table above is useful we might want to improve things a little.

If you right-click on any cell within the pivot table (Cells A1 to K27 in the above example) a menu of options opens - select 'Edit Layout' and the Layout dialog will open again. You can change things simply by dragging fields to where you want them. You can drag a field from one layout area to another, you can add a field you didn’t have before, or you can remove a field by dragging it outside of the layout area.

Rather than having the sl_analysis as a Page Field we might want to show customers grouped 'within' each sl_analysis code and have a subtotal for each group. By dragging sl_analysis to the Row Fields area we can do this. Make sure the sl_analysis is above customer to achieve this result. To generate the sub-total on sl_analysis double click the column name and set the Subtotals option to 'Automatic' to generate the subtotal.

We might also want to be able to select our customers by invoice currency so dragging this to the Page Fields area achieves this.

The resulting Pivot Table is shown below:

{{< figure src="pt2.png" width="750" alt="Pivot Table 2" caption="Pivot Table #2 showing Customer Outstanding within SL Analysis by Pay Week">}}

#### Drill Down and Other Options

There are several useful options in the Pivot Table Layout dialog (below the field selection area) - one such is "Enable drill to details". If this option is enabled when you double click on a value in the table the source rows are automatically pasted into a new tab for you to inspect.

There are other Pivot table options in the Layout dialog, including:

* Filtering;
* Ignoring empty rows;
* Aggregation types - count, average, min/max etc;
* Disabling grand totals.

By experimenting with the options you can finesse the Pivot Table output to get the analysis that is required.

### Summary

Cash flow is vital for any business and knowing when your customers are due to pay you for invoiced sales is integral to understanding the dynamics of this vital area of your business. By exporting transaction data from uzERP and using it in a Pivot Table we have shown how you can quickly get to grips with who is due to pay and when.

uzERP has many standard lists that can be exported to csv provide the raw, 'long format' data that can be analysed this way. In addition, because it uses an open source database and you have full access to your data, custom queries can be relatively easily written to provide data sets with the appropriate columns for specific analysis required by your organisation.

Hopefully this very brief walk through has shown how powerful LibreOffice Pivot Tables can be in providing meaningful information from the data collected by uzERP as a by product of your improved day to day processes.

### Resources

The files for this post are available here:

* <a href="sl_openitems.sql" download>sl_openitems.sql</a> - the SQL script to generate the base data for the csv;
* <a href="sl_openitems.csv" download>sl_openitems.csv</a> - raw data as exported from uzERP;
* <a href="receipts_forecast.ods" download>receipts_forecast.ods</a> - a Libre Office file with the imported data and Pivot Table #2. Use this to test out various scenarios and options to get comfortable with how they change the resulting analysis.

You can find lots of information by visiting [Ask LibreOffice](https://ask.libreoffice.org/en/questions/scope:all/sort:activity-desc/tags:pivot/page:1/) with the pivot table tag.

If you are interested in structuring data for use in Pivot Tables the you should perhaps start by reading Hadley Wickham's [Tidy Data](https://vita.had.co.nz/papers/tidy-data.html) - while focused on R tools it gives a fantastic overview on how data needs to be structured for analysis in Pivot Tables and Charts.

__And finally.... if you want to know more about how we can help you improve your business through better systems and improved information then do please get in touch via the [Contacts Page](/contact/).__