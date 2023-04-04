#!/bin/bash


# 3 type of Function type written below

function install() {
    # code for installation
    echo "${FUNCNAME} - started"
    echo "Software installed ${1} ${2}"
    echo "${FUNCNAME} - ended"
}

configuration() {

    echo "${FUNCNAME} - started"
    echo "Configuration done ${1}"
    echo "${FUNCNAME} - ended"
}

function deploy {
    echo "${FUNCNAME} - started"
    echo "Application deployed ${1}"
    echo "${FUNCNAME} - ended"
}

install "nginx" "webserver"
configuration "nginx"
deploy "webapp"