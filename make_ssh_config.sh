hostfile=./host.txt
for exe_hosts in `cat ${hostfile} | grep -v ^#`
do
echo "Host `ssh ${exe_hosts} -p 22 uname -n |awk -F. '{print $1}'`"
echo "  HostName ${exe_hosts}"
echo "  User root"
echo "  port 22"
echo "  IdentityFile /root/.ssh/id_rsa"
echo ""
done
