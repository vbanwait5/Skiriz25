import sqlite3
import csv
import os

db_path = os.path.join("instance", "user-data.sqlite3")

conn = sqlite3.connect(db_path)
cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS images (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    images TEXT,
    title TEXT,
    fields TEXT,
    description TEXT,
    links TEXT
);
""")

csv_path = "events.csv"  
with open(csv_path, "r", encoding="utf-8") as csvfile:
    reader = csv.DictReader(csvfile)

    for row in reader:
        images = row.get("Photo link", "").strip()
        title = row.get("Event title", "").strip()
        fields = row.get("Misc tags", "General").strip()
        description = f"{row.get('Organizer', '')} - {row.get('Place', '')} ({row.get('Building', '')})".strip()
        links = row.get("Links", images).strip() 

        cursor.execute("INSERT INTO images (images, title, fields, description, links) VALUES (?, ?, ?, ?, ?)",
                       (images, title, fields, description, links))

conn.commit()
conn.close()

print("Data successfully inserted into instance/user-data.sqlite3 (images table)")