from fastapi import FastAPI
from database import get_connection


app = FastAPI(
    title="Campus X Mart API",
    description="Backend API for Campus X Mart",
    version="1.0.0"
)


@app.get("/")
def home():
    return {
        "message": "Welcome to Campus X Mart API"
    }


@app.get("/api/items")
def get_items():
    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("""
        SELECT item_id, name, description, price,
               item_type, item_condition, status
        FROM items
        ORDER BY item_id;
    """)

    rows = cursor.fetchall()

    cursor.close()
    connection.close()

    items = []

    for row in rows:
        items.append({
            "item_id": row[0],
            "name": row[1],
            "description": row[2],
            "price": float(row[3]),
            "item_type": row[4],
            "condition": row[5],
            "status": row[6]
        })

    return {
        "count": len(items),
        "items": items
    }


@app.get("/api/users")
def get_users():
    connection = get_connection()
    cursor = connection.cursor()

    cursor.execute("""
        SELECT user_id, name, email, phone
        FROM users
        ORDER BY user_id;
    """)

    rows = cursor.fetchall()

    cursor.close()
    connection.close()

    users = []

    for row in rows:
        users.append({
            "user_id": row[0],
            "name": row[1],
            "email": row[2],
            "phone": row[3]
        })

    return {
        "count": len(users),
        "users": users
    }