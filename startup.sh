#!/bin/bash

set -x
echo "deploying"
oc apply -f deploy
oc apply -f resources/operator.yaml
oc apply -f resources/crds/ripsaw_v1alpha1_ripsaw_crd.yaml 
oc apply -f resources/crds/ripsaw_v1alpha1_uperf_cr.yaml


sleep 5
pod_name=$(oc get pods | grep "ContainerCreating\|Running" | cut -d ' ' -f 1)
oc logs -f $pod_name ansible
