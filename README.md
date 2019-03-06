# kustomize-prometheus

Deploy monitoring system base on 'prometheus'.

Target to kubernetes and All Deployment Resource are managed by 'kustomize'.

'Kustomize' is able to integration with 'argocd'. 

This Repository have purpose to deploy and manange multiple kubernetes clusters.

```
$ kustomize build | kubectl apply -f - prometheus-operator
$ kustomize build | kubectl apply -f - prometheus/base
$ kustomize build | kubectl apply -f - kube-cluster/kube-apiserver
$ kustomize build | kubectl apply -f - kube-cluster/kubelet
$ kustomize build | kubectl apply -f - kube-cluster/cadvisor
$ kustomize build | kubectl apply -f - kube-cluster/node-exporter
$ kustomize build | kubectl apply -f - kube-cluster/kube-dns
$ kustomize build | kubectl apply -f - kube-cluster/kube-state-metrics
$ kustomize build | kubectl apply -f - grafana/base
$ kustomize build | kubectl apply -f - alertmanager
$ kustomize build | kubectl apply -f - prometheus-hpa-adapter
```


# Component
Prometheus-operator

Prometheus

Alertmanager

kube-cluster
 - scrape_configs
 - deploy k8s exporter

Exporters
 - deploy prometheus exporter

k8s-prometheus-adaptor

ArgoCD
