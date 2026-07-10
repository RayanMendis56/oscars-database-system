# Oscar.py
# Student Name : Rayan Mendis
# Student ID   : 22731942

import mysql.connector
from mysql.connector import Error
from getpass import getpass

def connect():
    # Prompt for credentials, default if Enter is pressed.
    while True:
        u = input("Input Username [root]: ").strip() or "root"
        p = getpass("Input mysql password [root1234]: ").strip() or "root1234"

        try:
            return mysql.connector.connect(
                host="127.0.0.1",
                user=u,
                password=p,
                database="Oscars",
            )
        except Error as err:
            print(f"Connection failed: {err}")
            retry = input("Retry with different credentials? (y/N): ").strip().lower()
            if retry != "y":
                raise

def print_rows(cursor, headers=None):
    if headers:
        print(*headers, sep="\t")
    rows = cursor.fetchall()
    for r in rows:
        print(*r, sep="\t")


def read_optional_int(prompt):
    value = input(prompt).strip()
    return None if value == "" else int(value)


def read_optional_str(prompt):
    value = input(prompt).strip()
    return None if value == "" else value


connection = connect()
cursor = connection.cursor()

print("+--------------------------------------------------------------------+")
print("|                       Welcome to the Oscar Database                |")
print("+--------------------------------------------------------------------+")

while True:
    print("+--------------------------------------------------------------------+")
    print("|                             Main Menu                              |")
    print("+--------------------------------------------------------------------+")
    print("| 1. View all the tables                                             |")
    print("| 2. Describe tables                                                 |")
    print("| 3. Show data in tables                                             |")
    print("| 4. Advanced features (Views/Queries/Procedures)                    |")
    print("| 5. Insert data                                                     |")
    print("| 6. Update data                                                     |")
    print("| 7. Exit                                                            |")
    print("+--------------------------------------------------------------------+")
    try:
        option = int(input("Enter your choice : "))
    except ValueError:
        print("Enter a number 1-7.\n")
        continue
    print()

    # 1) SHOW TABLES
    if option == 1:
        print("+--------------------------------------------------------------------+")
        print("|                               SHOW TABLES                          |")
        print("+--------------------------------------------------------------------+")
        cursor.execute("SHOW TABLES;")
        print_rows(cursor)

    # 2) DESCRIBE
    elif option == 2:
        while True:
            print("+--------------------------------------------------------------------+")
            print("|                            DESCRIBE TABLES                         |")
            print("+--------------------------------------------------------------------+")
            print("\t1. Ceremony")
            print("\t2. Country")
            print("\t3. Person")
            print("\t4. Film")
            print("\t5. Award")
            print("\t6. Nominee")
            print("\t7. Act")
            print("\t8. Back")
            try:
                sub = int(input("Enter your choice: "))
            except ValueError:
                print("Enter 1-8\n"); continue
            if sub == 8: break

            table_map = {
                1: "Ceremony", 2: "Country", 3: "Person", 4: "Film",
                5: "Award", 6: "Nominee", 7: "Act"
            }
            table = table_map.get(sub)
            if not table:
                print("Invalid.\n"); continue
            cursor.execute(f"DESCRIBE {table};")
            print_rows(cursor)

    # 3) SELECT data
    elif option == 3:
        while True:
            print("+--------------------------------------------------------------------+")
            print("|                               DATA IN TABLES                       |")
            print("+--------------------------------------------------------------------+")
            print("\t1.Ceremony")
            print("\t2.Country")
            print("\t3.Person")
            print("\t4.Film")
            print("\t5.Award")
            print("\t6.Nominee")
            print("\t7.Act")
            print("\t8.Back")
            try:
                sub = int(input("Enter your choice: "))
            except ValueError:
                print("Enter 1-8\n"); continue
            if sub == 8: break

            table_map = {
                1: "Ceremony", 2: "Country", 3: "Person",
                4: "Film", 5: "Award", 6: "Nominee", 7: "Act"
            }
            table = table_map.get(sub)
            if not table:
                print("Invalid.\n"); continue
            cursor.execute(f"SELECT * FROM {table};")
            print_rows(cursor)

    # 4) Advanced (Views / Queries / Procedures)
    elif option == 4:
        while True:
            print("+--------------------------------------------------------------------+")
            print("|                      ADVANCED FEATURES                             |")
            print("+--------------------------------------------------------------------+")
            print("\t1. Views")
            print("\t2. Queries")
            print("\t3. Procedures")
            print("\t4. Back")
            try:
                sub = int(input("Enter your choice: "))
            except ValueError:
                print("Enter 1-4\n"); continue
            print()

            # VIEWS
            if sub == 1:
                print("1) Winners per ceremony & category")
                print("2) Film nomination & win tally")
                print("3) Back")
                try:
                    v = int(input("Enter your choice: "))
                except ValueError:
                    print("Enter 1-3\n"); continue
                if v == 3: continue

                ceremony = int(input("Enter Ceremony_ID: "))
                if v == 1:
                    cursor.execute(
                        "SELECT * FROM vw_award_winners WHERE Ceremony_ID = %s;",
                        (ceremony,)
                    )
                    print_rows(cursor, ["Award_ID","Ceremony_ID","Category",
                                        "Film_ID","Film_Title","Person_ID","Person_Name"])
                elif v == 2:
                    cursor.execute(
                        "SELECT * FROM vw_film_nomination_stats WHERE Ceremony_ID = %s;",
                        (ceremony,)
                    )
                    print_rows(cursor, ["Film_ID","Film_Title","Ceremony_ID",
                                        "Nominations","Wins"])

            # QUERIES
            elif sub == 2:
                print("1. Winners for last ceremony (2025)")
                print("2. Nominations and wins per film")
                print("3. Films per language")
                print("4. Person count per country")
                print("5. Male / Female count")
                print("6. Most nominated films")
                print("7. Countries by most winners")
                print("8. Acting roles per film (nominated)")
                print("9. Gender breakdown among winners")
                print("10. Film titles for last ceremony")
                print("11. Back")
                try:
                    q = int(input("Enter your choice: "))
                except ValueError:
                    print("Enter 1-11\n"); continue
                print()

                if q == 1:
                    cursor.execute("""
                        SELECT a.Ceremony_ID, a.Award_name AS Category,
                               f.Film_ID, f.Film_title,
                               p.Person_ID, p.Person_name
                        FROM Award a
                        LEFT JOIN Film   f ON f.Film_ID   = a.Film_ID
                        LEFT JOIN Person p ON p.Person_ID = a.Person_ID
                        WHERE a.Ceremony_ID = 5;
                    """)
                    print_rows(cursor)
                elif q == 2:
                    cursor.execute("""
                        SELECT f.Film_ID, f.Film_title, f.Ceremony_ID,
                               COUNT(n.Nominee_ID) AS nominations,
                               SUM(CASE WHEN n.Is_Winner=1 THEN 1 ELSE 0 END) AS wins
                        FROM Film f
                        LEFT JOIN Nominee n ON n.Film_ID = f.Film_ID
                        GROUP BY f.Film_ID, f.Film_title, f.Ceremony_ID
                        HAVING nominations > 0
                        ORDER BY f.Ceremony_ID, wins DESC, nominations DESC, f.Film_title;
                    """)
                    print_rows(cursor)
                elif q == 3:
                    cursor.execute("""
                        SELECT f.Language AS Language, COUNT(*) AS Film_Count
                        FROM Film f
                        GROUP BY f.Language
                        ORDER BY Film_Count DESC;
                    """)
                    print_rows(cursor)
                elif q == 4:
                    cursor.execute("""
                        SELECT c.Country_ID,
                               COALESCE(c.Country_name, CONCAT('Country ', p.Country_ID)) AS Country,
                               COUNT(*) AS Person_Count
                        FROM Person p
                        LEFT JOIN Country c ON c.Country_ID = p.Country_ID
                        GROUP BY c.Country_ID, Country
                        ORDER BY Person_Count DESC, Country;
                    """)
                    print_rows(cursor)
                elif q == 5:
                    cursor.execute("""
                        SELECT Gender, COUNT(*) AS Person_Count
                        FROM Person
                        GROUP BY Gender
                        ORDER BY Person_Count DESC, Gender;
                    """)
                    print_rows(cursor)
                elif q == 6:
                    cursor.execute("""
                        SELECT f.Film_ID, f.Film_title, COUNT(*) AS Total_Noms
                        FROM Nominee n
                        JOIN Film f ON f.Film_ID = n.Film_ID
                        GROUP BY f.Film_ID, f.Film_title
                        ORDER BY Total_Noms DESC, f.Film_title;
                    """)
                    print_rows(cursor)
                elif q == 7:
                    cursor.execute("""
                        SELECT c.Country_name, c.Country_Code, COUNT(*) AS Wins
                        FROM Award a
                        JOIN Person p ON p.Person_ID = a.Person_ID
                        JOIN Country c ON c.Country_ID = p.Country_ID
                        GROUP BY c.Country_ID, c.Country_name
                        ORDER BY Wins DESC, c.Country_name;
                    """)
                    print_rows(cursor)
                elif q == 8:
                    cursor.execute("""
                        SELECT f.Film_title, p.Person_name, a.Role
                        FROM Act a
                        JOIN Film f   ON f.Film_ID   = a.Film_ID
                        JOIN Person p ON p.Person_ID = a.Person_ID
                        ORDER BY f.Film_title, p.Person_name;
                    """)
                    print_rows(cursor)
                elif q == 9:
                    cursor.execute("""
                        SELECT p.Gender, COUNT(*) AS Winner_Count
                        FROM Award a
                        JOIN Person p ON p.Person_ID = a.Person_ID
                        GROUP BY p.Gender
                        ORDER BY Winner_Count DESC, p.Gender;
                    """)
                    print_rows(cursor)
                elif q == 10:
                    cursor.execute("""
                        SELECT f.Film_title AS Title, c.Year
                        FROM Film f
                        INNER JOIN Ceremony c ON c.Ceremony_ID = f.Ceremony_ID
                        WHERE c.Year = 2025;
                    """)
                    print_rows(cursor)
                elif q == 11:
                    pass

            # PROCEDURES
            elif sub == 3:
                print("1. sp_ceremony_winners(Ceremony_ID)")
                print("2. sp_person_filmography(Person_ID)")
                print("3. Back")
                try:
                    psel = int(input("Enter your choice: "))
                except ValueError:
                    print("Enter 1-3\n"); continue
                if psel == 1:
                    cid = int(input("Enter Ceremony_ID: "))
                    cursor.execute("CALL sp_ceremony_winners(%s);", (cid,))
                    print_rows(cursor)
                elif psel == 2:
                    pid = int(input("Enter Person_ID: "))
                    cursor.execute("CALL sp_person_filmography(%s);", (pid,))
                    print_rows(cursor)

            elif sub == 4:
                break

    # 5) INSERTS
    elif option == 5:
        print("+--------------------------------------------------------------------+")
        print("|                            INSERT DATA                             |")
        print("+--------------------------------------------------------------------+")
        print("\t1. Insert into Ceremony")
        print("\t2. Insert into Country")
        print("\t3. Insert into Person")
        print("\t4. Insert into Film")
        print("\t5. Insert into Award")
        print("\t6. Insert into Nominee")
        print("\t7. Insert into Act")
        print("\t8. Back")
        try:
            sub = int(input("Enter your choice: "))
        except ValueError:
            print("Enter 1-8\n")
            continue

        if sub == 8:
            continue

        if sub == 1:
            Ceremony_ID = int(input("Ceremony_ID : "))
            Year = int(input("Year : "))
            sql = "INSERT INTO Ceremony (Ceremony_ID, Year) VALUES (%s, %s);"
            cursor.execute(sql, (Ceremony_ID, Year))
            connection.commit()
            print("New Ceremony entered successfully.\n")

        elif sub == 2:
            Country_ID = int(input("Country_ID : "))
            Country_name = input("Country_name : ").strip()
            Country_code = input("Country_code : ").strip()
            sql = "INSERT INTO Country (Country_ID, Country_name, Country_code) VALUES (%s, %s, %s);"
            cursor.execute(sql, (Country_ID, Country_name, Country_code))
            connection.commit()
            print("New Country entered successfully.\n")

        elif sub == 3:
            Person_name = input("Person_name : ").strip()
            Gender = input("Gender (M/F) : ").strip()
            Country_ID = read_optional_int("Country_ID (leave blank for NULL) : ")
            sql = "INSERT INTO Person (Person_name, Gender, Country_ID) VALUES (%s, %s, %s);"
            cursor.execute(sql, (Person_name, Gender, Country_ID))
            connection.commit()
            print("New Person entered successfully.\n")

        elif sub == 4:
            Film_title = input("Film_title : ").strip()
            genre = input("genre : ").strip()
            language = input("language (leave blank for NULL) : ").strip() or None
            Ceremony_ID = read_optional_int("Ceremony_ID (leave blank for NULL) : ")
            sql = "INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES (%s, %s, %s, %s);"
            cursor.execute(sql, (Film_title, genre, language, Ceremony_ID))
            connection.commit()
            print("New Film entered successfully.\n")

        elif sub == 5:
            Award_ID = int(input("Award_ID : "))
            Award_name = input("Award_name : ").strip()
            Ceremony_ID = int(input("Ceremony_ID : "))
            Film_ID = read_optional_int("Film_ID (leave blank for NULL) : ")
            Person_ID = read_optional_int("Person_ID (leave blank for NULL) : ")
            sql = "INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES (%s, %s, %s, %s, %s);"
            cursor.execute(sql, (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID))
            connection.commit()
            print("New Award entered successfully.\n")

        elif sub == 6:
            Nominee_ID = int(input("Nominee_ID : "))
            Award_ID = int(input("Award_ID : "))
            Film_ID = int(input("Film_ID : "))
            Person_ID = int(input("Person_ID : "))
            Is_Winner = int(input("Is_Winner (0/1): "))
            Category = input("Category : ").strip()

            sql = """
                INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category)
                VALUES (%s, %s, %s, %s, %s, %s);
            """
            cursor.execute(sql, (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category))
            connection.commit()
            print("New Nominee entered successfully.\n")

        elif sub == 7:
            Person_ID = int(input("Person_ID : "))
            Film_ID = int(input("Film_ID : "))
            Role = input("Role : ").strip()
            sql = "INSERT INTO Act (Person_ID, Film_ID, Role) VALUES (%s, %s, %s);"
            cursor.execute(sql, (Person_ID, Film_ID, Role))
            connection.commit()
            print("New Act entry entered successfully.\n")

    elif option == 6:
        print("+--------------------------------------------------------------------+")
        print("|                            UPDATE DATA                             |")
        print("+--------------------------------------------------------------------+")
        print("\t1. Update Ceremony")
        print("\t2. Update Country")
        print("\t3. Update Person")
        print("\t4. Update Film")
        print("\t5. Update Award")
        print("\t6. Update Nominee")
        print("\t7. Update Act")
        print("\t8. Back")
        try:
            sub = int(input("Enter your choice: "))
        except ValueError:
            print("Enter 1-8\n")
            continue

        if sub == 8:
            continue

        if sub == 1:
            Ceremony_ID = int(input("Ceremony_ID to update : "))
            cursor.execute("SELECT Year FROM Ceremony WHERE Ceremony_ID = %s;", (Ceremony_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Ceremony.\n")
                continue
            Year = read_optional_int("New Year (leave blank to keep current) : ")
            if Year is None:
                Year = row[0]
            cursor.execute("UPDATE Ceremony SET Year = %s WHERE Ceremony_ID = %s;", (Year, Ceremony_ID))
            connection.commit()
            print("Ceremony updated successfully.\n")

        elif sub == 2:
            Country_ID = int(input("Country_ID to update : "))
            cursor.execute("SELECT Country_name, Country_code FROM Country WHERE Country_ID = %s;", (Country_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Country.\n")
                continue
            Country_name = read_optional_str("New Country_name (leave blank to keep current) : ")
            Country_code = read_optional_str("New Country_code (leave blank to keep current) : ")
            if Country_name is None:
                Country_name = row[0]
            if Country_code is None:
                Country_code = row[1]
            cursor.execute("UPDATE Country SET Country_name = %s, Country_code = %s WHERE Country_ID = %s;", (Country_name, Country_code, Country_ID))
            connection.commit()
            print("Country updated successfully.\n")

        elif sub == 3:
            Person_ID = int(input("Person_ID to update : "))
            cursor.execute("SELECT Person_name, Gender, Country_ID FROM Person WHERE Person_ID = %s;", (Person_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Person.\n")
                continue
            Person_name = read_optional_str("New Person_name (leave blank to keep current) : ")
            Gender = read_optional_str("New Gender (leave blank to keep current) : ")
            Country_ID = read_optional_int("New Country_ID (leave blank to keep current) : ")
            if Person_name is None:
                Person_name = row[0]
            if Gender is None:
                Gender = row[1]
            if Country_ID is None:
                Country_ID = row[2]
            cursor.execute("UPDATE Person SET Person_name = %s, Gender = %s, Country_ID = %s WHERE Person_ID = %s;", (Person_name, Gender, Country_ID, Person_ID))
            connection.commit()
            print("Person updated successfully.\n")

        elif sub == 4:
            Film_ID = int(input("Film_ID to update : "))
            cursor.execute("SELECT Film_title, genre, language, Ceremony_ID FROM Film WHERE Film_ID = %s;", (Film_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Film.\n")
                continue
            Film_title = read_optional_str("New Film_title (leave blank to keep current) : ")
            genre = read_optional_str("New genre (leave blank to keep current) : ")
            language = read_optional_str("New language (leave blank to keep current) : ")
            Ceremony_ID = read_optional_int("New Ceremony_ID (leave blank to keep current) : ")
            if Film_title is None:
                Film_title = row[0]
            if genre is None:
                genre = row[1]
            if language is None:
                language = row[2]
            if Ceremony_ID is None:
                Ceremony_ID = row[3]
            cursor.execute("UPDATE Film SET Film_title = %s, genre = %s, language = %s, Ceremony_ID = %s WHERE Film_ID = %s;", (Film_title, genre, language, Ceremony_ID, Film_ID))
            connection.commit()
            print("Film updated successfully.\n")

        elif sub == 5:
            Award_ID = int(input("Award_ID to update : "))
            cursor.execute("SELECT Award_name, Ceremony_ID, Film_ID, Person_ID FROM Award WHERE Award_ID = %s;", (Award_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Award.\n")
                continue
            Award_name = read_optional_str("New Award_name (leave blank to keep current) : ")
            Ceremony_ID = read_optional_int("New Ceremony_ID (leave blank to keep current) : ")
            Film_ID = read_optional_int("New Film_ID (leave blank to keep current) : ")
            Person_ID = read_optional_int("New Person_ID (leave blank to keep current) : ")
            if Award_name is None:
                Award_name = row[0]
            if Ceremony_ID is None:
                Ceremony_ID = row[1]
            if Film_ID is None:
                Film_ID = row[2]
            if Person_ID is None:
                Person_ID = row[3]
            cursor.execute("UPDATE Award SET Award_name = %s, Ceremony_ID = %s, Film_ID = %s, Person_ID = %s WHERE Award_ID = %s;", (Award_name, Ceremony_ID, Film_ID, Person_ID, Award_ID))
            connection.commit()
            print("Award updated successfully.\n")

        elif sub == 6:
            Nominee_ID = int(input("Nominee_ID to update : "))
            cursor.execute("SELECT Award_ID, Film_ID, Person_ID, Is_Winner, Category FROM Nominee WHERE Nominee_ID = %s;", (Nominee_ID,))
            row = cursor.fetchone()
            if not row:
                print("No such Nominee.\n")
                continue
            Award_ID = read_optional_int("New Award_ID (leave blank to keep current) : ")
            Film_ID = read_optional_int("New Film_ID (leave blank to keep current) : ")
            Person_ID = read_optional_int("New Person_ID (leave blank to keep current) : ")
            Is_Winner = read_optional_int("New Is_Winner (0/1, leave blank to keep current) : ")
            Category = read_optional_str("New Category (leave blank to keep current) : ")
            if Award_ID is None:
                Award_ID = row[0]
            if Film_ID is None:
                Film_ID = row[1]
            if Person_ID is None:
                Person_ID = row[2]
            if Is_Winner is None:
                Is_Winner = row[3]
            if Category is None:
                Category = row[4]
            cursor.execute("UPDATE Nominee SET Award_ID = %s, Film_ID = %s, Person_ID = %s, Is_Winner = %s, Category = %s WHERE Nominee_ID = %s;", (Award_ID, Film_ID, Person_ID, Is_Winner, Category, Nominee_ID))
            connection.commit()
            print("Nominee updated successfully.\n")

        elif sub == 7:
            Person_ID = int(input("Person_ID to update : "))
            Film_ID = int(input("Film_ID to update : "))
            cursor.execute("SELECT Role FROM Act WHERE Person_ID = %s AND Film_ID = %s;", (Person_ID, Film_ID))
            row = cursor.fetchone()
            if not row:
                print("No such Act entry.\n")
                continue
            Role = read_optional_str("New Role (leave blank to keep current) : ")
            if Role is None:
                Role = row[0]
            cursor.execute("UPDATE Act SET Role = %s WHERE Person_ID = %s AND Film_ID = %s;", (Role, Person_ID, Film_ID))
            connection.commit()
            print("Act entry updated successfully.\n")

    elif option == 7:
        break

# cleanup
cursor.close()
connection.close()
print("Goodbye!")
