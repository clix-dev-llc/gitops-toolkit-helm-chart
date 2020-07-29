# Gitops Toolkit Helm Chart

## Prerequisites

- Helm 3

## Install

```sh
helm repo add - username <your_github_username> - password <your_github_token> gotk-helm-chart 'https://raw.githubusercontent.com/saada/gotk-helm-chart/master/'
helm repo update
helm repo list
helm search gitops-toolkit
helm install --namespace gitops-system gitops-toolkit gotk-helm-chart/gitops-toolkit
```

Alternatively

```sh
git clone <path-to-repo>
cd <path-to-repo>
kubectl create namespace gitops-system
helm install --namespace gitops-system gitops-toolkit .
```

## Contributor Guide

```sh
tk install --export > templates/template.yaml
# move crds out of template.yaml into crds.yaml
# remove namespace object
make build
```