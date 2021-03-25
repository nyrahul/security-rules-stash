#!/bin/bash

# pg.yaml provides a sample pgsql k8s deployment/service. The foll login is based on it.

PGPASSWORD=admin123 psql -h localhost -U postgresadmin -p `kubectl get svc postgres -o 'jsonpath={.spec.ports[0].nodePort}'` postgresdb

