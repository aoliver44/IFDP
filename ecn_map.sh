if [ ! -f $1 ]; then
    echo "File" $1 " not found!";exit
fi

less $1 |awk '{print $2}'|awk -F '|' '{print $2}' |count_ec.py $1_counts.tsv
