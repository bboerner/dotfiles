export HOSTNAME
export hostname=$HOSTNAME

system_cpu=`uname -m`
kernel_name=`uname -s`

cygwin=0
if [[ "${kernel_name%*_NT-5*}" = "CYGWIN" || "${kernel_name%*_NT-6*}" = "CYGWIN" ]]; then
    export cygwin=1
    export CYGWIN="nodosfilewarning"
fi

if [[ $cygwin -eq 0 ]]; then
    ulimit -c 1000000000;
else
    ulimit -c 1000000;
fi

#echo "cygwin: $cygwin; system_cpu: $system_cpu; kernel_name: $kernel_name"
