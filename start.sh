#!/bin/sh
yarn run typesenseServer &
sleep 60
yarn run populateTypesenseIndex
yarn start