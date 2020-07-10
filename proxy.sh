#!/bin/bash

# This probably already exists and can probably be handled better, but I say that lot
#ps aux | grep -q "[s]sh -D 8123 -f -C -q -N user@host"

if `ps aux | grep -q "[s]sh -D 8123 -f -C -N"` ; then 
  echo "Proxy already running" 
  ps aux | grep "[s]sh -D 8123 -f -C -N"
else
  echo "Starting new proxy session"
  ssh -D 8123 -f -C -N it-login01.merit.edu
  ps aux | grep "[s]sh -D 8123 -f -C -N"
fi

