#! /bin/sh

kubectl delete -f routes/api-example-com-root-httproute.yaml

kubectl delete -f apiproducts/httpbin/httpbin-apiproduct.yaml
kubectl delete -f apiproducts/httpbin/httpbin-apiproduct-httproute.yaml

kubectl delete -f apis/httpbin/httpbin-apidoc.yaml
kubectl delete -f apis/httpbin/httpbin.yaml
