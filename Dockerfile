   FROM python:3.9

   WORKDIR /app



   COPY app.py .

   RUN pip install psycopg2-binary

   CMD ["python", "app.py"]
