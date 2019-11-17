#!/usr/bin/env python
# -*- coding: utf-8 -*-

import psycopg2
import os

if __name__ == '__main__':
    database_name = os.environ.get('POSTGRES_DB', 'your_postgres_db')
    database_user = os.environ.get('POSTGRES_USER', 'your_postgres_user')
    database_password = os.environ.get('POSTGRES_PASSWORD', 'your_postgres_password')
    database_host = os.environ.get('POSTGRES_HOST', 'your_postgres_host')
    database_port = os.environ.get('POSTGRES_PORT', 'your_postgres_port')

    conn = psycopg2.connect(dbname=database_name, user=database_user,
        password=database_password, host=database_host, port=database_port)

    cursor = conn.cursor()
    cursor.execute('SELECT 1')
    print(cursor.fetchall())

    conn.close()