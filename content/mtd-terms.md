---
title: uzERP Making Tax Digital Terms and Conditions
date: 2019-03-12
---

*Last Updated: 13 June 2019*

**Defintions**

*"You, your, customer(s)"*, refers to a UK VAT registered company using uzERP that also has a support agreement with uzERP LLP or Blueloop Ltd.

## Introduction

VAT-registered businesses with a taxable turnover above the VAT threshold are required to use the [Making Tax Digital](https://www.gov.uk/government/publications/making-tax-digital/overview-of-making-tax-digital) service to keep records digitally and use software to submit their VAT returns from 1 April 2019.

uzERP's VAT module has been updated to enable commercially supported customers to submit their VAT returns directly from uzERP to HMRC.

We will configure the uzERP systems of customers who have support agreements to use Making Tax Digital for VAT to submit VAT returns.

## Your Responsibilities

### VAT Return Submission

When you submit VAT information from uzERP software you are making a legal declaration that the information is true and complete. A false declaration can result in prosecution. It is entirely your responsibility to ensure that VAT information submitted to HMRC from uzERP software is correct.

### Security

uzERP LLP maintains application credentials that allow your uzERP software to interact with HMRC in the process of submitting VAT returns. These credentials are stored in a configuration file on your server and must remain secure.

* You must not disclose our application credentials to any third-party.
* If you think that our application credentials have been disclosed you must let us know immediately.

## Our Responsibilities

From time to time, we may change our application credentials. When we do this, we will update all supported customer systems with the new credentials. You will need to re-authorise uzERP to submit your VAT returns after we have changed our credentials.

## Fraud Protection Headers

By [law](http://www.legislation.gov.uk/uksi/2019/360/made) uzERP must send additional information called Fraud Prevention Headers when submitting VAT returns to HMRC. The headers may contain personal information and the HMRC have published a [Data Protection Impact Assessment](https://developer.service.hmrc.gov.uk/api-documentation/assets/content/documentation/3f4c263faa8231bea05c1826b7f6b81c-TxM%20DPIA%20v3%201%20Public.pdf).

Fraud Prevention Headers sent by uzERP:

Header Name | Content
---- | ----
Gov-Client-Connection-Method | `OTHER_DIRECT`
Gov-Client-Device-ID | `clientuuid`, a unique id provided by us that identifies your uzERP installation
Gov-Client-User-IDs | uzERP user name of the logged-in user
Gov-Client-Timezone | Current timezone offset from UTC, e.g. `UTC+01:00`
Gov-Client-User-Agent | Operating system information, e.g. `Linux 5.1.6-300.fc30.x86_64 #1 SMP Fri May 31 17:43:23 UTC 2019 x86_64`
Gov-Vendor-Version | uzERP version number

## Disclaimer

uzERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

uzERP software is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details https://www.gnu.org/licenses/gpl.html.
