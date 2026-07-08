#!/bin/bash -x

# creates the necessary docker images to run testrunner.sh locally

docker build --tag="sila/cppjit-testrunner" docker-cppjit
docker build --tag="sila/python-testrunner" docker-python
docker build --tag="sila/go-testrunner" docker-go
