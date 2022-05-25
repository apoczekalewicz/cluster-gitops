oc apply -f ./manifests/operator
oc wait --for=condition=available deployment --all -n openshift-gitops
oc apply -f ./manifests/argocd-setup
