import os
import time
import psycopg2
from psycopg2 import OperationalError

   # Получите информацию о базе данных из переменной окружения
DATABASE_URL = "postgres://zhilina:zhilina@db:5432/zhilina"

   # Функция для подключения к базе данных с попытками
def create_connection():
    while True:
        try:
            conn = psycopg2.connect(DATABASE_URL)
            return conn
        except OperationalError:
            print("Waiting for the database to be ready...")
            time.sleep(5)  # Задержка в 5 секунд перед следующей попыткой

   # Подключение к базе данных
conn = create_connection()
cursor = conn.cursor()

   # Выполнение запроса для получения максимального и минимального возраста
cursor.execute("SELECT MIN(age), MAX(age) FROM test_table WHERE LENGTH(name) < 6;")
min_age, max_age = cursor.fetchone()

print(f"Minimum age: {min_age}, Maximum age: {max_age}")

   # Закрытие соединения
cursor.close()
conn.close()
   


   
