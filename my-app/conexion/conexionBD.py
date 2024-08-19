# Importando Libreria mysql.connector para conectar Python con MySQL
import mysql.connector

def connectionBD():
    try:
        # Estableciendo la conexión con la base de datos
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd="mysql",  # Asegúrate de que esta contraseña sea correcta
            database="crud_python",
            charset='utf8mb4',
            collation='utf8mb4_unicode_ci',
            raise_on_warnings=True
        )

        # Verificando si la conexión fue exitosa
        if connection.is_connected():
            print("Conexión exitosa a la BD")
            return connection

    except mysql.connector.Error as error:
        print(f"No se pudo conectar: {error}")
        return None  # Asegúrate de devolver None en caso de error
