
:: Создание кластера БД

"%POSTGRES%/bin/initdb.exe" --username=superAdmin --pgdata="%POSTGRES_DB%" ^
 --auth=trust --auth-local=trust --auth-host=trust --encoding=UTF-8 --locale=ru --lc-collate=ru --lc-ctype=ru --lc-messages=en --lc-monetary=ru --lc-numeric=ru --lc-time=ru
