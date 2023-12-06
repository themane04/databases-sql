from datetime import datetime, timedelta, time
import random
import psycopg2


def generate_random_hour():
    hour = random.randint(0, 23)
    random_time = time(hour, 0, 0)
    return random_time


db_market = {
    'dbname': 'market',
    'user': 'postgres',
    'password': 'marjan12',
    'host': 'localhost'
}

sql_insert_markt = """
INSERT INTO markt
VALUES (%s, %s, %s, %s, %s, %s);
"""

sql_update_markt = """
UPDATE markt
SET markt_datum_id = %s,
    oeffnungszeit_id = %s
WHERE markt_id = %s;
"""

sql_insert_marktdatum = """
INSERT INTO marktdatum
VALUES (%s, %s, %s, %s);
"""

sql_insert_oeffnungszeit = """
INSERT INTO oeffnungszeit
VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
"""

sql_insert_stand = """
INSERT INTO stand
VALUES (%s, %s, %s)
"""

sql_update_verkaufer = """
UPDATE Verkaufer
SET stand_id = %s
WHERE verkaufer_id = %s;
"""

sql_update_ofz = """
UPDATE oeffnungszeit
set spezielle_Tage = %s
where oeffnungszeit_id = %s
"""

sql_insert_bst = """
insert into besucherstatistik
values (%s, %s, %s, %s)
"""

sql_insert_feedback = """
insert into feedback
values (%s, %s, %s, %s)
"""

first_names = ["Lukas", "Sarah", "Felix", "Anna", "Max", "Laura", "Nico", "Julia", "David", "Elena"]
last_names = ["Müller", "Meier", "Schmid", "Keller", "Huber", "Fischer", "Lehmann", "Berger", "Weber", "Roth"]
phone_numbers = ["079 964 90 90", "079 719 36 87", "079 271 65 16", "079 666 20 86", "079 603 19 64", "079 386 50 81",
                 "079 722 89 10", "079 210 38 35", "079 922 67 78", "079 298 40 37"]
stand_id = ["1", "2"]
market_names = [
    "Alpenfrische Maert",
    "Stadtoase Markt",
    "Bauernfreude Markt",
    "BioGenuss Bazar",
    "Handwerkerhof Markt"
]
street_names = ["Lindenallee", "Bergstrasse", "Seeweg", "Wiesenpfad", "Kastanienweg"]
city_names = ["Bern", "Zürich", "Genf", "Basel", "Lausanne"]
open_times_days = ["Montag-Samstag", "Dienstag-Donnerstag", "Mittwoch-Freitag", "Donnerstag-", "Freitag-Montag",
                   "Samstag-Mittwoch", "Sonntag-Donnerstag"]
open_times_special_days = ["Sonntag", "Feiertag"]
weihnachtsmarkt_staende = ["Glühwein Glanz", "Tannenbaum Träume", "Schneeflocken Süßwaren", "Nordpol Nostalgie",
                           "Lebkuchen Liebe"]
# Mapping of stands to products
stand_to_product = {
    "Glühwein Glanz": "Heisser Apfelwein",
    "Tannenbaum Träume": "Christbaumschmuck",
    "Schneeflocken Süßwaren": "Gebrannte Mandeln",
    "Nordpol Nostalgie": "Wollmützen",
    "Lebkuchen Liebe": "Traditioneller Lebkuchen"
}

# SQL query to fetch the stand name using stand_id
sql_fetch_stand = "SELECT standname FROM stand WHERE stand_id = %s;"

# SQL statement to insert product data
sql_insert_product = "INSERT INTO produkt (produkt_id, produktname, preis, stand_id) VALUES (%s, %s, %s, %s);"

feedbacks = ["Gut!", "Schlecht!", "Sehr Gut!", "Ew!", "Huere geil!"]

start_date = datetime(2020, 1, 1)
end_date = datetime(2023, 12, 31)

conn = psycopg2.connect(**db_market)
cursor = conn.cursor()

# for i in range(3, 200):
#     # Fetch the stand name for the current stand_id
#     cursor.execute(sql_fetch_stand, (i,))
#     result = cursor.fetchone()
#     if result:  # Make sure we got a result back
#         standname = result[0]
#         # Determine the product name based on the stand name
#         produktname = stand_to_product.get(standname,
#                                            "Standardmarktprodukt")
#         # Insert the product data
#         cursor.execute(sql_insert_product, (i, produktname, random.randint(5, 20), i))
#         conn.commit()

# for i in range(4, 200):
#     random_date1 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     cursor.execute(sql_insert_feedback, (str(i), random.choice(feedbacks), random_date1, str(i)))
#     conn.commit()

# for i in range(3, 200):
#     random_date1 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     cursor.execute(sql_insert_bst, (str(i), random.randint(30, 500), random_date1, str(i)))
#     conn.commit()

# for i in range(1, 200):
#     cursor.execute(sql_update_ofz, (random.choice(open_times_special_days), i))
#     conn.commit()


# for i in range(10, 200):
#     cursor.execute(sql_update_markt, (i, i, i))
#     conn.commit()


# for i in range(10, 200):
#     random_date1 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     random_date2 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     cursor.execute(sql_insert_marktdatum, (str(i), random_date1, random_date2, str(i)))
#     conn.commit()


# for i in range(3, 200):
#     cursor.execute(sql_update_verkaufer, (i, i))
#     conn.commit()

# for i in range(3, 10):
#     conn = psycopg2.connect(**db_market)
#     cursor = conn.cursor()
#     cursor.execute(sql_insert_stand, (str(i), random.choice(weihnachtsmarkt_staende), str(i)))
#     conn.commit()
#     cursor.close()
#     conn.close()

# for i in range(3, 10):
#     conn = psycopg2.connect(**db_market)
#     cursor = conn.cursor()
#     cursor.execute(sql_update_markt, (i, i, i))
#     conn.commit()
#     cursor.close()
#     conn.close()

# for i in range(3, 10):
#     conn = psycopg2.connect(**db_market)
#     cursor = conn.cursor()
#     random_date1 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     random_date2 = start_date + timedelta(
#         days=random.randint(0, (end_date - start_date).days))
#     cursor.execute(sql_insert_oeffnungszeit,
#                    (str(i), random.choice(open_times_days), generate_random_hour(), generate_random_hour(),
#                     open_times_special_days, generate_random_hour(), generate_random_hour(), str(i)))
#     conn.commit()
#     cursor.close()
#     conn.close()

# for i in range(3, 200):
#     conn = psycopg2.connect(**db_market)
#     cursor = conn.cursor()
#     cursor.execute(sql_insert, (
#         str(i), random.choice(first_names), random.choice(last_names), random.choice(phone_numbers),
#         random.choice(stand_id)))
#     conn.commit()
#     cursor.close()
#     conn.close()
