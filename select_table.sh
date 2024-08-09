db_name=$1
read -p "Select a table: " table_name
table_path=DataBases/$db_name/$table_name
if [ ! -f "$table_path" ]; then
    echo "Table does not exist!!!!!!"
    ./fun-table.sh $1
else
    # Show Table Content
    echo "============================"
    echo "$table_name table contains: "
    echo "============================"
    cat "$table_path"
    echo "============================"
    ./fun-table.sh $1
fi
