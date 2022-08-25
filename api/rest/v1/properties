---
layout: default
title: Properties
nav_order: 4
parent: v1 REST
grand_parent: API
published: false
permalink: /api/rest/v1/properties
---

# /v1/properties

Get all [properties](/glossary.html#property) available for a specific entity.

More specifically, this endpoint returns the labels of the edges connected to a specific entity node.

<div markdown="span" class="alert alert-warning" role="alert" style="color:black; font-size: 0.8em">
    <span class="material-icons md-16">info </span><b>See Also:</b><br />
    To find the values of a specific property, see [/v1/property/values](/api/rest/v1/property/values)
</div>

## Request

GET Request
{: .api-header}

<div class="api-signature">
http://api.datacommons.org/v1/properties/[in|out]/{ENTITY_DCID}
</div>

<script src="/assets/js/syntax_highlighting.js"></script>

### Path Parameters

| Name                                                | Description                   |
| --------------------------------------------------- | ----------------------------- |
| [in | out] <br /> <required-tag>Required</required-tag> | One of `in` or `out`. If `in`, returns the labels for edges going into the queried entity node. If `out`, returns the labels for edges going away from the queried entity node. |
| ENTITY_DCID <br /> <required-tag>Required</required-tag> | [DCID](/glossary.html#dcid) of the entity to query. |
{: .doc-table }

### Query Parameters

There are no query parameters for this endpoint.

## Response

The response looks like:

```json
{
  "value": 1234,
  "date": "YYYY-MM-DD",
  "Metadata": {}
}
```
{: .response-signature .scroll}

### Response fields

| Name     | Type   | Description                |
| -------- | ------ | -------------------------- |
| field    | type   | description of output here |
{: .doc-table}

## Examples

### Example 1: Description of what we're trying to show

One sentence explanation of details of the example.

Request:
{: .example-box-title}
```bash
  $ curl --request GET --url \
  'https://api.datacommons.org/v1/end/point/param1/param2?query=value'
```
{: .example-box-content .scroll}

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
{: .example-box-content .scroll}
