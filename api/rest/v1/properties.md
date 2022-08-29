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

Get all [properties](/glossary.html#property) associated with a specific entity.

More specifically, this endpoint returns the labels of the edges connected to a specific node in the Data Commons Knowledge Graph. Edges in the graph are directed, so properties can either be labels for edges _towards_ or _away_ from the node. Outgoing edges correspond to properties of the node. Incoming edges denote that the node is the value of this property for some other node.

<div markdown="span" class="alert alert-warning" role="alert" style="color:black; font-size: 0.8em">
    <span class="material-icons md-16">info </span><b>See Also:</b><br />
    To find all possible values of a specific property, see [/v1/property/values](/api/rest/v1/property/values)
</div>

## Request

GET Request
{: .api-header}

<div class="api-signature">
http://api.datacommons.org/v1/properties/{EDGE_DIRECTION}/{ENTITY_DCID}
</div>

<script src="/assets/js/syntax_highlighting.js"></script>

### Path Parameters

| Name                                                | Description                   |
| --------------------------------------------------- | ----------------------------- |
| EDGE_DIRECTION <br /> <required-tag>Required</required-tag> | One of `in` or `out`. <br /><br />If `in`, returns properties for which the queried entity is a value. If `out`, returns properties that describe the queried entity. |
| ENTITY_DCID <br /> <required-tag>Required</required-tag> | [DCID](/glossary.html#dcid) of the entity to query. |
{: .doc-table }

### Query Parameters

There are no query parameters for this endpoint.

## Response

The response looks like:

```json
{
  "entity": "Entity DCID",
  "properties": [
    "property_name_1",
    "property_name_2",
    ...
  ]
}
```
{: .response-signature .scroll}

### Response fields

| Name     | Type   | Description                |
| -------- | ------ | -------------------------- |
| entity   | string   | [DCID](/glossary.html#dcid) of the entity queried. |
| properties | list | List of properties connected to the entity queried, for the direction specified in the request. |
{: .doc-table}

## Examples

### Example 1: Description of what we're trying to show

One sentence explanation of details of the example.

Request:
{: .example-box-title}
```bash
  $ curl --request GET --url \
  'https://api.datacommons.org/v1/properties/'
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
