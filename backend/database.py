import psycopg2


def get_connection():
    connection = psycopg2.connect(
        dbname="campusmart",
        user="parvezmusarrof",
        password="parvez2926",
        host="localhost",
        port="5432"
    )

    return connection