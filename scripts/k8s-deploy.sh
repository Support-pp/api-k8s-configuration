#!/bin/sh

set -e

export GITHUB_SHA=$(git rev-parse --short HEAD)
export APP="spp-api-gateway"
export DOMAIN="api.support-pp.de"
export NAMESPACE="support-pp"
export IMAGE="docker-registry.k8net.de/supportpp/$APP:latest"

kubectl kustomize k8s/template | envsubst > k8s/prod.yml