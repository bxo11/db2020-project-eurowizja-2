import os
import pymysql


def execute(SQL_string):
    
    connection = pymysql.Connect(
        host = 'localhost',
        user = os.getenv('root'),
        db   = os.getenv('eurowizja'),
        charset     = 'utf8mb4',
        cursorclass = pymysql.cursors.DictCursor
    )
    result = None
    
    
    with connection.cursor() as cursor:
        
        try:
            cursor.execute(SQL_string)
            result = cursor.fetchall()
            
        finally:
            connection.close()
    
    
    return result