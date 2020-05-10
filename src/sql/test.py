import pymysql
import sys


def execute(SQL_string):
    
    connection = pymysql.Connect(
        host = 'localhost',
        user = 'root',
        db   = 'eurowizja',
        charset     = 'utf8mb4',
        cursorclass = pymysql.cursors.DictCursor
    )
    result = None
    
    
    with connection.cursor() as cursor:
        
        try:
            cursor.execute(SQL_string)
            result = cursor.fetchall()
            
        except Exception as excep:
            print("Error: {0}".format(excep))
            
        finally:
            cursor.close()
    
    return result