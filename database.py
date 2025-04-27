import sqlite3

def create_db(database='calendario_ortodoxo.db'):
    # Conectar ou criar o banco de dados
    conn = sqlite3.connect(database)
    cursor = conn.cursor()

    with open('ddl.sql', 'r', encoding='utf-8') as f:
        sql_script = f.read()

    cursor.executescript(sql_script)

    conn.commit()
    conn.close()

if __name__ == "__main__":
    create_db()
    print("Banco de dados e tabelas criados com sucesso!")
