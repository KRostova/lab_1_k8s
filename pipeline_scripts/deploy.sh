#! /bin/sh

set -uex

aws eks update-kubeconfig --name sre_course
helm upgrade -i phonebook-chart phonebook_chart --set imageURL=$DOCKER_HUB_REPOSITORY --set imageVersion=$GITHUB_SHA
