#!/bin/bash

set -x
echo "cleaning up"
oc delete -f resources/crds/ripsaw_v1alpha1_uperf_cr.yaml
oc delete -f resources/crds/ripsaw_v1alpha1_ripsaw_crd.yaml
oc delete -f resources/operator.yaml
oc delete -f deploy

