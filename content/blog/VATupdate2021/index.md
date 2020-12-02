---
title: "uzERP VAT Updates for 2021"
intro: "As far as we are aware, uzERP is the only Open Source system available that is compliant with the HMRC Making Tax Digital for VAT standard.

We have updated the VAT module for 2021 to allow for the postponed VAT procedures available from January 1st 2021."
draft: "false"
date: 2020-12-02
categories: ["Using uzERP"]
tags: ["Accounting"]
banner: "img/banners/rawpixel-670711-unsplash.jpg"
author: "Martyn Shiner"
---
## Changes as a result of Brexit

On 1st January 2021 the transition period with the European Union (EU) will end.

From this date the UK will operate a full, external border which means that controls will be placed on the movement of goods between Great Britain (excluding Northern Ireland) and the EU. This will be similar to the rules that currently apply to movement of goods with the rest of the world (ROW).

As a result, there will be major changes to the process for moving goods across the GB-EU border - businesses who have international trade with the EU will need to take account of these changes and adapt accordingly.

From an accounting perspective the major change is that VAT will be levied on imports of goods from the EU, following the same rates and structures as are
applied to Rest of World (RoW) imports. VAT registered businesses will be able to use postponed VAT accounting (PVA) to account for this payment through their VAT return rather than paying on entry. Non-VAT registered importers have the same options available to report and pay import VAT as they do for customs duties.

### Purchases - Import VAT

* The new Postponed VAT Accounting (PVA) regime comes into force from 1st January 2020 covering **ALL** imports (including those from suppliers in the EU) - from this date VAT payable on imports of goods will be accounted for as part of the VAT return rather than being paid at entry.
* For suppliers who are in the EU Intrastat declarations will still have to be completed for 12 months, i.e. the whole of 2021.

More information can be found [online on the HMRC website](https://www.gov.uk/guidance/complete-your-vat-return-to-account-for-import-vat) regarding import VAT options.

### Sales - EU dispatches and Export VAT

* From 1st January 2021 sales (dispatches) to other EU countries can be ignored.
* EU sales lists for goods and services will no longer be required.

### Northern Ireland

There is a hybrid system for Northern Ireland - it is staying within the EU tax regime for 4 years until December 31st 2024, such that Acquisitions and Dispatches still need to be recorded and an EU Sales List completed. However imports from ROW will come under the new PVA regime (see above). For this reason the structure of the VAT return (with Box 2, 8 and 9) will remain. 

## uzERP updates

uzERP has been updated to cover the postponed VAT accounting (PVA) method for companies that require it with the EU tax rules also left in place to cater for companies in Northern Ireland (NI).

As a result of the new requirements the VAT return has been updated with new VAT Box definitions for 2021 as follows:

**BOX 1 Outputs**

* VAT on Sales invoiced irrespective of GL code
* VAT on cashbook receipts
* VAT on Output journals (fore example Fuel Scale charges)
* Reverse Charge VAT as a +ve number
* Postponed VAT on imports

**Box 2 VAT on EU Acquisitions**

* Applies only to supplies from registered entities as recorded on Intrastat arrivals (applies to NI only)

**Box 3 Total VAT Due**

* Sum of Boxes 2 and 3

**Box 4 VAT Reclaimed on Inputs**

* VAT from purchase invoices
* VAT on cashbook payments
* VAT input journals
* Reverse charge VAT as an input
* VAT on acquisitions from EU suppliers that is shown in Box 2 (applies to NI only)
* Postponed VAT on imports

**Box 5 Net VAT**

* Sum of Box 3 less Box 4

**Box 6 Sales Excluding VAT**

* Value of outputs invoiced net of VAT for all VAT rates defined in VAT rates table (include exports and despatches to EU)
* Value net of VAT of cashbook receipts
* Value of Output journals
* Value of services supplied under the reverse charge scheme

**Box 7 Purchases Excluding VAT**

* Value of inputs invoiced by suppliers net of VAT for all VAT rates defined in VAT rates table (include all imports and arrivals from EU/ROW and the value of services supplied under the reverse charge scheme)
* Value net of VAT of cashbook payments
* Value of input journals

After the end of the year Boxes 8 and 9 apply to NI only but the definitions are included here for completeness.

**Box 8 Goods supplied to the EU Excluding VAT**

* Net value of Sales of **GOODS** to other EU countries
* Include value of goods covered by EU distance selling regulations

**Box 9 Goods received from the EU Excluding VAT**

* Net value of Purchases of **GOODS** from other EU countries

See [this link on the HMRC website](https://www.gov.uk/guidance/how-to-fill-in-and-submit-your-vat-return-vat-notice-70012#section3) for more information on the requirements for each entry on the VAT return.

## uzERP is Open Source

HMRC publishes a list of software suppliers with systems compliant with MTD for VAT [here](https://www.gov.uk/guidance/software-for-sending-income-tax-updates) - however, as far as we are aware, none of them are Open Source.

uzERP is therefore the __ONLY__ option if you want an Open Source solution that allows you to submit compliant VAT returns without using 3rd party software (commonly known as a 'Bridge').

## Need more information?

If you want to find out more about Making Tax Digital for VAT and how uzERP can keep your records electronically, then do please get in touch via the [Contacts Page](/contact/).