#!/bin/bash
 
#VERSION="1.0"
#AUTHOR by wenzizone.cn
 
. /usr/local/nagios/libexec/utils.sh
 
CHECKNAME="Mount NFS"
 
RESULT=""
EXIT_STATUS=$STATE_OK
 
NFSFSTAB=`LC_ALL=C awk '!/^#/ && $3 ~ /^nfs/ && $3 != "nfsd" && $4 !~ /noauto/ { print $1 }' /etc/fstab`
NFSMTAB=`LC_ALL=C awk '$3 ~ /^nfs/ && $3 != "nfsd" && $2 != "/" { print $1 }' /proc/mounts`
NFSEXPORTS=`showmount -e 10.123.4.211 2>&1 | awk -F": " '{print $3}'`

theend() {
    echo $RESULT
    exit $EXIT_STATUS
}
 
CHECK_MOUNT(){
    LIST=""
    for list in $NFSFSTAB
    do
        NFS_MOUNT=$(LC_ALL=C cat /proc/mounts |cut -d " " -f 1|grep "${list}$")
        if [ -z "${NFS_MOUNT}" ];then
            LIST="$LIST$list "
        fi
    done
    return $LIST
}
if [ "$NFSEXPORTS" = "Program not registered" ];then
    RESULT="$CHECKNAME CRITICAL - Can't mount nfs"
    EXIT_STATUS=$STATE_CRITICAL
else
    if [ -n "${NFSMTAB}" ];then
        if [ "${NFSFSTAB}" = "${NFSMTAB}" ];then
                RESULT="$CHECKNAME OK - NFS BE MOUNTED PROPERLY"
                EXIT_STATUS=$STATE_OK
        else
                CHECK_MOUNT
                RESULT="$CHECKNAME WARNING - ${LIST} NOT BE MOUNTED"
                EXIT_STATUS=$STATE_WARNING
        fi
    else
        RESULT="$CHECKNAME CRITICAL - ALL NFS NOT BE MOUNTED"
        EXIT_STATUS=$STATE_CRITICAL
    fi
fi

theend

