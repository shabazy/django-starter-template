#!/usr/bin/env bash

echo "Waiting for postgresql service start...;"
while ! nc -z db 5432;
    do
        echo "sleeping..."
        sleep 1;
    done
        echo "Connected!";