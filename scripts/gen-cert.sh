#!/usr/bin/env bash

openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
    -out k8-ingress-tls.crt \
    -keyout k8-ingress-tls.key \
    -subj "/CN=demo.example.com/O=k8-ingress-tls"


#kubectl create secret tls k8s-ingress-tls \
#    --namespace ingress-basic \
#    --key k8s-ingress-tls.key \
#    --cert k8s-ingress-tls.crt
