#!/bin/bash
{
    docker-compose \
        -f ./.devcontainer/docker-compose.yml \
        -f ./.devcontainer/cypress-open.yml \
        start cypress
} || {
    echo 'docker-compose -f ... -f ... start cypress failed.'
    echo 'Be sure to run this script outside your devcontainer'
}