#!/usr/bin/env bash

VM=$1

echo "Copying script to server..."
scp provision.sh $VM:/tmp/

echo "Running script on server..."
ssh $VM "sudo bash /tmp/provision.sh"

echo "DONE! Open your server IP in browser."