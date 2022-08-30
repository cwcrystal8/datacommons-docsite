---
layout: default
title: Triples
nav_order: 7
parent: v1 REST
grand_parent: API
published: false
permalink: /api/rest/v1/triples
---

# /v1/end/point

Get a [triple](/glossary.html#triple).

<div markdown="span" class="alert alert-warning" role="alert" style="color:black; font-size: 0.8em">
    <span class="material-icons md-16">info </span><b>See Also:</b><br />
    To query triples for multiple entities, see the [bulk version](/api/rest/v1/bulk/triples) of this endpoint.
</div>

## Request

GET Request
{: .api-header}

<div class="api-signature">
http://api.datacommons.org/v1/triples/{param1}/{param2}?key={api_key}
</div>

<script src="/assets/js/syntax_highlighting.js"></script>

### Path Parameters

| Name                                                | Description                   |
| --------------------------------------------------- | ----------------------------- |
| param1 <br /> <required-tag>Required</required-tag> | description of parameter here |
| param2 <br /> <required-tag>Required</required-tag> | description of parameter here |
{: .doc-table }

### Query Parameters

| Name                                               | Type | Description               |
| -------------------------------------------------- | ---- | ------------------------- |
| key <br /> <required-tag>Required</required-tag>   | string | Your API key. See the [page on authentication](/api/rest/v1/getting_started#authentication) for a demo key, as well as instructions on how to get your own key. |
| query <br /> <optional-tag>Optional</optional-tag> | type | description of query here |
{: .doc-table }

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
  'https://api.datacommons.org/v1/end/point/param1/param2?query=value&key=AIzaSyCTI4Xz-UW_G2Q2RfknhcfdAnTHq5X5XuI'
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
