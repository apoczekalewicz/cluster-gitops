oc project example-helloworld-cicd
oc patch serviceaccount pipeline -p '{"secrets": [{"name": "quay-creds"}]}'
oc patch serviceaccount pipeline -p '{"secrets": [{"name": "github-creds"}]}'
oc apply -f cm-sonar.yaml
