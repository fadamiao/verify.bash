#!/bin/bash
# verify.bash - Just a way to help verify the compatibility of the system to run scripts or programs.
# Author: Fernando A. Damião <fernando.damiao@inpe.br>
# Created At: 2012-10-24 18:29
# Last Update: 2013-09-02 10:59
# License: BSD 3-Clause License

# Initialization
CONFIRMED='0'
ELEMENTS='0'
SYS=$(uname -s)
# ---


BASH_VER='3'

PROGRAMS[0]='ps'
PROGRAMS[1]='grep'
PROGRAMS[2]='awk'
PROGRAMS[3]='kill'


if [ "${SYS}" == 'Darwin' -o "${SYS}" == 'Linux' ]; then
    for PROGRAM in ${PROGRAMS[@]}; do
        ELEMENTS=$((ELEMENTS + 1))
        if ( type -P $PROGRAM &> /dev/null ); then
            CONFIRMED=$((CONFIRMED + 1))
            echo "'$PROGRAM'.... OK"
        else
            echo "I need '$PROGRAM' to run"
        fi
    done

    ELEMENTS=$((ELEMENTS + 1))
    if [ "${BASH_VERSINFO}" -ge "${BASH_VER}" ]; then
        CONFIRMED=$((CONFIRMED + 1))
        echo "Bash version..... OK"
    else
        echo "Bash...   Failed"
    fi

    if [ "${CONFIRMED}" -eq "${ELEMENTS}" ]; then
        echo "Passed! You are able to run!"
    else
        echo "Install deps and run me after this..."
        exit 1
    fi
else
    echo "Your system is not supported"
    exit 1
fi
