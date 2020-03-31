#数据库操作

from config import db
import mysql.connector
from utils import encrypt, checkPwd

conn = mysql.connector.connect(host=db['host'], user=db['user'],
        passwd=db['passwd'], database=db['database'], charset='utf8mb4')
db = conn.cursor()#指针？

def findUser(username):
    #判断是否存在相同用户名
    db.execute('SELECT * FROM users_info WHERE `username`=%s', (username,))
    result = db.fetchall()
    return result

def userLogin(username, password):
    db.execute('SELECT * FROM users_info WHERE `username`=%s ',(username,))
    result = db.fetchone()
    #先根据用户名选取该行
    if result:
        if checkPwd(password, result[2]):
            #检验密码
            return result 
    return None

def createUser(username, password):
    #密码加密
    password = encrypt(password)
    db.execute('INSERT INTO users_info(`username`, `password`) VALUES(%s, %s)', (username, password))
    conn.commit()
    return db.rowcount


def isnRepeat(name, dorm):
    #检查重复报名
    db.execute('SELECT * FROM registration_info WHERE `name`=%s AND `Dormitory`=%s',(name, dorm))
    result = db.fetchall()
    return result

def inputApplyInfo(data):
    db.execute(' ALTER TABLE registration_info AUTO_INCREMENT = 1;')
    db.execute('INSERT INTO registration_info(name, sex, Grade, College, Dormitory, Phone,\
                First_choice, Secend_choice, Willing_adjust, Self_introduction) VALUES(%s, %s,\
                %s,%s, %s, %s, %s, %s, %s, %s)',(data['name'], data['sex'], data['Grade'],
                data['College'], data['Dormitory'], data['Phone'], data['First_choice'],
                data['Second_choice'], data['Willing_adjust'], data['Self_introduction']))
    conn.commit()
    return db.rowcount
                
