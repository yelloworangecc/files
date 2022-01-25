#!/usr/bin/bash
# before use this shell script
# 1) install texlive or other latex tool
# 2) modify the default pandoc latex template to support Chinese and put it at pandoc user-data dir (for example C:\Users\chhuang\AppData\Roaming\pandoc)
echo $#
if [ $# != 1 ]; then
    echo "usage: this.sh org_file_name"
    exit -1
fi
DATE_TIME=`date '+%Y%m%d%H%M%S'`
OUTPUT_FILE=${1//org/$DATE_TIME}
echo $OUTPUT_FILE
pandoc --pdf-engine=xelatex $1 -o $OUTPUT_FILE.pdf
