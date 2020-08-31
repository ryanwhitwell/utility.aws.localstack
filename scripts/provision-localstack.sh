#!/bin/bash
echo "Start provisioning service '$SERVICE'"
scripts/utilities/wait-for-localstack.sh &&
scripts/services/$SERVICE/bootstrap.sh &&
echo -e "\nDone provisioning service '$SERVICE'"
scripts/utilities/print-services-list.sh