#!/bin/bash
source ~/.bash_profile

if [ $# != 1 ]; then
    echo "usage: this.sh issue_number"
    exit 0
fi

SCRUM_ROOT=~/scrum
DIR_LIST=`ls $SCRUM_ROOT`
#echo $DIR_LIST
for dir in $DIR_LIST; do
    #echo ${dir#*-}
    issue_number=${dir%-*}
    #echo $issue_number
    if [ $issue_number == $1 ]; then
	dir_path=$SCRUM_ROOT/$dir
	org_path=$dir_path/$issue_number.org
	#if [ -d "$org_path" ] ; then
	if [ -e "$org_path" ] ; then
	    echo found
	else
	    touch $org_path
	    echo created
	fi
	em $org_path
	exit 0
    fi
done

read -p "Enter the name: " input
new_dir=$SCRUM_ROOT/$1-$input
new_org=$new_dir/$1.org
mkdir $new_dir
touch $new_org
echo created
em $new_org

