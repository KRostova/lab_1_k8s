#! /bin/sh

aws eks update-kubeconfig --name sre_course

cat ~/.kube/config
