#!/bin/sh

# uninstall chart
kubectl config set-context --current --namespace mysql
helm uninstall mysql --namespace=mysql