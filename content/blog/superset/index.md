---
title: "Apache Superset"
draft: "true"
date: 2019-06-17
categories: ["Extending uzERP"]
tags: ["Reporting", "Apache Superset"]
banner: "img/banners/weight_progress_custom_1-1024x805.png"
author: "Martyn Shiner"
---
For a number of years we've been looking for a  way to get enterprise class reporting and analysis for our small business customers.

From the [Apache Superset ]((https://github.com/apache/incubator-superset/blob/master/README.md)) website - "Apache Superset (incubating) is a modern, enterprise-ready business intelligence web application".

__WOW!__

So how can we use this in conjunction with uzERP to help drive your business forward?
<!--more-->

## Introduction to Apache Superset 

The Github [introduction to Superset](https://github.com/apache/incubator-superset) gives a little more information....

> Apache Superset is a data exploration and visualization web application.
>
> Superset provides:
>
> * An intuitive interface to explore and visualize datasets, and create interactive dashboards.
> * A wide array of beautiful visualizations to showcase your data.
> * Easy, code-free, user flows to drill down and slice and dice the data underlying exposed dashboards. The dashboards and charts acts as a starting point for deeper analysis.
> * A state of the art SQL editor/IDE exposing a rich metadata browser, and an easy workflow to create visualizations out of any result set.
> * An extensible, high granularity security model allowing intricate rules on who can access which product features and datasets. Integration with major authentication backends (database, OpenID, LDAP, OAuth, REMOTE_USER, ...)
> * A lightweight semantic layer, allowing to control how data sources are exposed to the user by defining dimensions and metrics
> * Out of the box support for most SQL-speaking databases
> * Deep integration with Druid allows for Superset to stay blazing fast while slicing and dicing large, realtime datasets
> * Fast loading dashboards with configurable caching

Crucially Superset will 'talk' directly to PostgreSQL, the database backend used by uzERP.

## Installation

Installation of Superset is not as straightforward as Redash.

Assuming an 18.04 Ubuntu server....