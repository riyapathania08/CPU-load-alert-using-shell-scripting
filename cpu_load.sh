vi cpu_load.sh

#!bin/bash
echo "cpu load average value check"
load= `top -bn1 | grep load | awk'{printf "%.2f%%\t\t\n" $(NF-2)}'| CUT -d '%' -f1`
echo $load
if [[ ${load%.*} > 1 ]];
then
    echo "cpu load is very high: $load"
else
    echo"load is noraml"
fi

man top
top-bn1|grep load
cat cpu_load.sh
chmod +x cpu_load.sh
./cpu_load.sh
