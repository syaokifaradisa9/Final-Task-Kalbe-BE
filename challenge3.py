import mysql.connector

conn = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="management"
)

mycursor = mydb.cursor()

insert_sql = (
    "INSERT INTO employee(first_name, last_name, age, sex, income)"
    "VALUES (%s, %s, %s, %s, %s)"
)

values = ("Muhammad", "Syaoki Faradisa", 24, 'Male', 10000000)

try:
    cursor.execute(insert_sql, values)
    conn.commit()
except:
    conn.rollback()
conn.close()