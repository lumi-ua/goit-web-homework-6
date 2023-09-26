import sqlite3
from pprint import pprint

def execute_sql_file(query):
    try:
        # Підключення до бази даних SQLite3
        connection = sqlite3.connect('hw_db')

        # Створення курсора
        cursor = connection.cursor()

        with open(query, 'r') as sql_file:
            sql_query = sql_file.read()
            cursor.execute(sql_query)
            pprint(cursor.fetchall())
            
        # Закриття курсора та з'єднання
        cursor.close()
        connection.close()

    except (sqlite3.Error, FileNotFoundError) as error:
        print(f"Помилка виконання SQL файлу {query}: {error}")

execute_sql_file("query_1.sql")

query = ["query_1.sql", "query_2.sql", "query_3.sql", 
         "query_4.sql", "query_5.sql", "query_6.sql", 
         "query_7.sql", "query_8.sql", "query_9.sql", "query_10.sql" ]

