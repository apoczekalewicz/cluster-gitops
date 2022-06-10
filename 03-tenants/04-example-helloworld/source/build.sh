#!/bin/bash
podman build -t quay.io/apoczeka/app-python-hello -f ./Containerfile
podman push quay.io/apoczeka/app-python-hello
