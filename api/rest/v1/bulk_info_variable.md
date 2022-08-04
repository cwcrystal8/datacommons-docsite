---
layout: default
title: Get info on a variable
nav_order: 2
parent: v1 REST
grand_parent: API
published: false
permalink: /api/rest/v1/bulk/info/variable
---



## v1/bulk/info/variable

Get basic information about multiple variables.

This API returns basic information on multiple variables, given each of their DCIDs. The information is provided per variable, and includes the number of places with data on each variable, the minimum and maximum values observed, and the name and DCID of the top 3 entities with highest observed values for each variable.

<div markdown="span" class="alert alert-info" role="alert" style="color:black; font-size: 0.8em">
    <span class="material-icons md-16">info </span><b>Tip:</b><br />
    To explore variables available in the Data Commons knowledge graph, take a look at the [Statistical Variable Explorer](https://datacommons.org/tools/statvar).
</div>

<div markdown="span" class="alert alert-warning" role="alert" style="color:black; font-size: 0.8em">
    <span class="material-icons md-16">info </span><b>See Also:</b><br />
    To get information on a place instead of a variable, see [/v1/bulk/info/place](/api/rest/v1/info/place).<br />
    For querying a single variable and a simpler output, see the [simple version](/api/rest/v1/info/variable) of this endpoint.
</div>



## Request


GET https://api.datacommons.org/v1/observations/point/{VARIABLE_DCID}/{ENTITY_DCID}
{: #api-signature}

### Parameters

#### Path Parameters

| Name                                                | Description                   |
| --------------------------------------------------- | ----------------------------- |
| VARIABLE_DCID <br /> <required-tag>Required</required-tag> | DCID of the variable to query a value for. |
| ENTITY_DCID <br /> <required-tag>Required</required-tag> | DCID of entity that the variable describes. |
{: .doc-table }

#### Query Parameters

| Name                                               | Type | Description               |
| -------------------------------------------------- | ---- | ------------------------- |
| date <br /> <optional-tag>Optional</optional-tag> | type | Datetime of  measurement of the value requested in ISO 8601 format. To see the dates available, lookup the variable in the [Statistical Variable Explorer](https://datacommons.org/tools/statvar). If date is not provided, the latest available datapoint is returned.  |
{: .doc-table }

## Response

The response will look something like:

```json
{
  "date": "YYYY-MM-DD",
  "value": 1234,
  "facet": {...},
}
```

### Response fields

| Name     | Type   | Description                |
| -------- | ------ | -------------------------- |
| value    | type   | Value of the variable queried for the queried entity. |
| date     | string | Datetime the value returned was measured. |
| facet    | dict   | Metadata on the [facet]({{ site.baseurl }}/api/rest/v1/getting_started#facet) the data came from. Can include things like provenance, measurement method, and units. |
{: .doc-table}

## Examples

### Example 1: Get single value for given variable and entity

Get the population count (DCID: `Count_Person`) for the United States of America (DCID: `country/USA`). Note that the latest entry available will be returned.

Request:
{: .example-box-title}
```bash
$ curl --request GET --url \ 
‘https://api.datacommons.org/v1/observations/point/Count_Person/country/USA’
```
{: .example-box-content}

Response:
{: .example-box-title}
```json
{
  "date": "2020",
  "value": 331449281,
  "facet": {
      "importName": "USDecennialCensus_RedistrictingRelease",
      "provenanceUrl": "https://www.census.gov/programs-surveys/decennial-census/about/rdo/summary-files.html",
      "measurementMethod": "USDecennialCensus"
    }
}
```
{: .example-box-content}


### Example 2: Get single value at a **specific date**, for given variable and entity

Get the annual electricity generation (DCID: `Annual_Generation_Electricity`) of California (DCID: `geoId/06`) in 2018.

Request:
{: .example-box-title}
```bash
$ curl --request GET --url \ 
‘https://api.datacommons.org/v1/observations/point/Annual_Generation_Electricity/geoId/06?date=2018’
```
{: .example-box-content}

Response:
{: .example-box-title}
```json
{
  {
    "date": "2018",
    "value": 195465638180,
    "facet": {
      "importName": "EIA_Electricity",
      "provenanceUrl": "https://www.eia.gov/opendata/qb.php?category=0",
      "unit": "KilowattHour"
    }
  }
}
```
{: .example-box-content}

