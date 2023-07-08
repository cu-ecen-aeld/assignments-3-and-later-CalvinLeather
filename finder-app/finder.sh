# set -euxo pipefail
set -eu
if [ $# -lt 2 ]
then
	echo "Error! Missing args"
    exit 1
else
	FILESDIR=$1
	SEARCHSTR=$2
fi

NFILES=`find $FILESDIR -maxdepth 1 -not -type d | wc  -l`

NLINES=`grep -nrw $FILESDIR -e $SEARCHSTR  | wc  -l`

echo "The number of files are ${NFILES} and the number of matching lines are ${NLINES}"