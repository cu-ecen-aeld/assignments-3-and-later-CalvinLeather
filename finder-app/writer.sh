# set -euxo pipefail
# set -eu
# if [ $# -lt 2 ]
# then
# 	echo "Error! Missing args"
#     exit 1
# else
# 	WRITEFILE=$1
# 	WRITESTR=$2
# fi

# mkdir -p $(dirname $WRITEFILE)
# touch $WRITEFILE
# echo $WRITESTR >> $WRITEFILE

make clean
make
writer