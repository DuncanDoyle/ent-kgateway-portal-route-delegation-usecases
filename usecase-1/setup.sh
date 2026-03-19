#! /bin/sh

kubectl apply -f apis/httpbin/httpbin.yaml
kubectl apply -f apis/httpbin/httpbin-apidoc.yaml

kubectl apply -f apiproducts/httpbin/httpbin-apiproduct-httproute.yaml
kubectl apply -f apiproducts/httpbin/httpbin-apiproduct.yaml

kubectl apply -f routes/api-example-com-root-httproute.yaml