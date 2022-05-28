#!/bin/bash
if [[ "$#" -ne 1 ]]
then
	echo "Usage: $0 <dir>"
	exit 1
fi

oc create -k $1
