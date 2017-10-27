echo "commands:"
echo $@
echo "==============================="
hostfile=host.txt
for exe_hosts in `cat ${hostfile} | grep -v ^#`
do
  ssh ${exe_hosts} -p 22 $@
done
