# Portal Route Delegation - Use Case 1


## Prerequisit

- Kubernetes cluster
- Solo Enterprise for kgateway 2.2.0-beta.14+
- Portal
- `kgateway-system` namespace

## Setup

```
./setup.sh
```

## Teardown

```
./teardown.sh
```

## Use Case

2 HTTPRoutes, a [root HTTPRoute](`routes/api-example-com-root-httproute`) which for the `/httpbin/v1.0/` path delegates the to [HTTPBin APIProduct HTTPRoute](`apiproducts/httpbin-apiproduct-httproute.yaml`). So the the path on which, for example, HTTPBin APIProduct's `/get` operation can be accessed is: http://api.example.com/httpbin/v1.0/get. However, the stitched OpenAPI Spec for the HTTPBin APIProduct omits the `/httpbin/v1.0` prefix, e.g.:

```
 "/get": {
    "get": {
        "description": "Returns GET data.",
        "operationId": "/get",
        "responses": {}
    }
},
```

which makes the OpenAPI Spec unusable for the "Try it out" functionality in the UI.