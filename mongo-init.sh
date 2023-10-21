#!/bin/bash

echo "Starting MongoDB initial data import..."

# Wait for MongoDB to fully start
sleep 10

# Import the data
mongoimport --host localhost --db myDatabase --collection myCollection --drop --type json --file /docker-entrypoint-initdb.d/legadraGCva._Role.json --jsonArray
mongoimport --host localhost --db myDatabase --collection myCollection --drop --type json --file /docker-entrypoint-initdb.d/legadraGCva._SCHEMA.json --jsonArray

echo "MongoDB initial data import done."
