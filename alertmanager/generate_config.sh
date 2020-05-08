#!/bin/bash
kubectl create secret generic alertmanager-main --from-file=./configs/alertmanager.yaml --from-file=./configs/alertmanager-tmpl.yaml --dry-run -oyaml > alertmanager-secret.yaml
