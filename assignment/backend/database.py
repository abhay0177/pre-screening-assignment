import os
import psycopg2
from psycopg2 import sql

DATABASE_URL = os.getenv('# put your databse URL over here to communicate with the Database')

def get_db_connection():
    return psycopg2.connect(DATABASE_URL)