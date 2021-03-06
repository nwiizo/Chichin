#!/bin/bash
echo "Commands to be executed on each host:"
echo $@
echo "============================================="
hostfile=./host.txt
for exe_hosts in `cat ${hostfile} | grep -v ^#`
do
  echo "##############################################"
  echo "host:${exe_hosts}"
  echo "command:${@}"
  ssh ${exe_hosts} -p 22 $@
done
echo "##############################################"
