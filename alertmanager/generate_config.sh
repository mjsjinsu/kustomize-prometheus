#!/bin/bash
kubectl create secret generic alertmanager-alertmanager --from-file=./configs/alertmanager.yaml --from-file=./configs/alertmanager-tmpl.yaml --dry-run -oyaml > secret-alertmanager.yaml
