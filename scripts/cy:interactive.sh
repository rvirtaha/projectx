#!/bin/bash
{
    docker-compose \
        -f ./.devcontainer/docker-compose.yml \
        -f ./.devcontainer/cypress-open.yml \
        run \
        cypress open --project /e2e
} || {
    echo ''
    echo 'docker-compose -f ... -f ... run cypress ... failed.'
    echo 'Be sure to run this script outside your devcontainer'
}