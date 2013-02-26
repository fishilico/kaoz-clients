#!/bin/sh
# Kaoz basic client
# Usage: echo "mesage" |ircpipe [#channel]

# Change these settings to match the configuration of the server
#LISTENER_PASSWORD='MyVerySecretPassword'
#LISTENER_HOST='localhost'
#LISTENER_PORT=9010
#LISTENER_SSL=false
#LISTENER_CRT='/etc/ssl/kaoz/server.crt' #This file should only contain the certificate, not the key ;-)

# Default channel
DEFAULT_CHANNEL='#default-channel'

# Get channel
if [ $# -ne 1 ]
then
    CHANNEL="$DEFAULT_CHANNEL"
else
    CHANNEL="$1"
fi

# Compute Kaoz server location
KAOZSERVER="${LISTENER_HOST:-localhost}:${LISTENER_PORT:-9010}"

# Send the real message, from stdin
while read LINE
do
    echo "${LISTENER_PASSWORD}:${CHANNEL}:(`hostname`) $LINE"
done | \
if ${LISTENER_SSL:-false}
then
    if [ "x" = "x${LISTENER_CRT}" ]
    then
        # SSL without CA
        socat - "OPENSSL:${KAOZSERVER}"
    else
        # SSL with a CA
        socat - "OPENSSL:${KAOZSERVER},verify,cafile=${LISTENER_CRT}"
    fi
else
    # No SSL
    socat - "TCP:${KAOZSERVER}"
fi
