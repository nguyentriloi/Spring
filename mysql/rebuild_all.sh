#!/usr/bin/env bash

MYSQL_USER=root
MYSQL_PWD=admin
MYSQL_HOST=127.0.0.1
MYSQL_PORT=3306
MYSQL_CMD='mysql -u '$MYSQL_USER' -p'$MYSQL_PWD' -h '$MYSQL_HOST' -P'$MYSQL_PORT
echo $MYSQL_CMD;
SQL_MODE="set session sql_mode='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
TMP_FOLDER='/data'

CUR_DIR=$PWD
MAX_VERSION='5.1'

##########################
appendFile() {
    content=$1
    fileName=$2

    if [ -f tmp.swp ] ; then
        rm tmp.swp
    fi

    echo $content > tmp.swp
    cat $fileName >> tmp.swp
    mv tmp.swp $fileName
}

executeSQLFile() {
    sql_file=$1
    echo "+ START: "$sql_file" "
    $MYSQL_CMD < $sql_file
    echo "- END: "$sql_file" "
}

echo '#################################'
echo 'Drop old databases...'
    executeSQLFile $CUR_DIR'/migration_scripts/drop_all_databases.sql'

echo 'Create all databases...'
    executeSQLFile $CUR_DIR'/migration_scripts/create_all_databases.sql'
echo '#################################'

for f in $(ls -h $CUR_DIR/migration_scripts | sort -t. -k1,1n  -k2,2n -k3,3n); do
    if [[ -d $CUR_DIR/migration_scripts/$f ]]; then
        service_name=$(basename $f)
        echo 'Initializing data for service '$service_name

        # Run all migrations scripts
        for sql_migration_file in $CUR_DIR'/migration_scripts'/$service_name/*; do
            if [ -f $sql_migration_file ]; then
                migration_file_name=$(basename $sql_migration_file)
                executeSQLFile $CUR_DIR'/migration_scripts'/$service_name'/'$migration_file_name
            fi
        done
    fi
done

echo '#################################'
