oc project example-helloworld-cicd
oc patch serviceaccount pipeline -p '{"secrets": [{"name": "quay-creds"}]}'

