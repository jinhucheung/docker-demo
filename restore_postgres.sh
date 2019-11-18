#!/bin/bash

export PGPASSWORD="${PGPASSWORD:-$POSTGRES_PASSWORD}"

psql=( psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U $POSTGRES_USER -d $POSTGRES_DB )

${psql[@]} -c 'DROP TABLE IF EXISTS public.users CASCADE;'

gunzip -c /docker-entrypoint-initdb.d/table.sql.gz | "${psql[@]}"

unset PGPASSWORD