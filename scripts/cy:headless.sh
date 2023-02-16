#!/bin/bash
{
    docker-compose \
        -f ./.devcontainer/docker-compose.yml \
        -f ./.devcontainer/cypress-run.yml \
        --exit-code-from cypress \
        start cypress
} || {
    echo 'docker-compose -f ... -f ... start cypress failed.'
    echo 'Be sure to run this script outside your devcontainer'
}