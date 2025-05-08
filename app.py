# app.py
# This Flask app connects to a PostgreSQL database container and serves a random sci-fi quote.

from flask import Flask
import psycopg2

app = Flask(__name__)

# Connect to the PostgreSQL database (running in another container)
conn = psycopg2.connect(
    host='quotes-db',       # Replace with the hostname or IP of the DB container
    dbname='quotes',
    user='quoteuser',
    password='quotepass'
)

@app.route('/')
def quote():
    cur = conn.cursor()
    cur.execute("SELECT author, quote FROM quotes ORDER BY RANDOM() LIMIT 1;")
    author, quote = cur.fetchone()
    cur.close()
    return f'<h1>{quote}</h1><p>- {author}</p>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)