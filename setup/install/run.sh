oc apply -f ./manifests/operator
sleep 30
echo -e "\n\n### Deployments:"
oc get deployments -n openshift-gitops
echo -e "\n\n### Status:"
oc wait --for=condition=Available deployment --all -n openshift-gitops
echo -e "\nDONE"
