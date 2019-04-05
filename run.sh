#!/bin/bash

SECONDS=`date -u +%s`

if [ -z "$START_DATE" ] 
then
	export START_DATE=`date -u -d@"$(($SECONDS - 86400))" +%Y%m%dT0`
fi

if [ -z "$END_DATE" ]
then
	export END_DATE=`date -u +%Y%m%dT0`
fi

echo "Starting ingest from $START_DATE"
echo "Ending ingest at $END_DATE"

curl -u $AMPLITUDE_USERNAME:$AMPLITUDE_PASSWORD "https://amplitude.com/api/2/export?start=$START_DATE&end=$END_DATE" > export.zip
unzip export.zip

for FILE in `ls -l`
do
    if test -d $FILE
    then
      mv $FILE my_files
    fi
done

cd my_files && gunzip *.gz

for FILE in `ls`
do
	jq --raw-output -f ../filter.jq $FILE >> ../insert.sql
done

psql postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_DATABASE_NAME -f ../insert.sql