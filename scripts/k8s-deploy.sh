#!/bin/sh

set -e

export GITHUB_SHA=$(git rev-parse --short HEAD)
export APP="spp-api-gateway"
export DOMAIN="api.support-pp.de"

kubectl kustomize k8s/template | envsubst > k8s/prod.yml